-- Vista de leaderboard diario --

USE crossfit;

DROP PROCEDURE IF EXISTS leaderboard_date;


CREATE PROCEDURE leaderboard_date(_date DATE)
BEGIN
    DECLARE sessionDate DATE;
    SELECT _date INTO sessionDate;

    TRUNCATE temp_leaderboard_session;



    INSERT INTO temp_leaderboard_session (id_leaderboard, id_athlete, athlete_name, wod_level, wod_score, sex, wod_name, wod_mode, wod_type, date_, dim)
        SELECT
               sr.id_session_results,
               a.id_athlete,
               a.name,
               sr.wod_level,
               sr.wod_score,
               a.sex,
               w.name,
               w.mode,
               w.type,
               c.date_,
               r.dim
        FROM session s
            INNER JOIN athlete a ON s.id_athlete = a.id_athlete
            INNER JOIN session_results sr ON sr.id_session_results=s.id_session
            INNER JOIN class c ON c.date_=s.date_
            INNER JOIN wod w ON c.id_wod = w.id_wod
            INNER JOIN rxgoals r on w.id_wod = r.id_wod
        WHERE c.date_=sessionDate;


    SELECT
           id_athlete 'ID',
           athlete_name 'NAME',
           wod_level 'WOD LEVEL',
           CONCAT(wod_score, ' ',dim) 'SCORE',
           sex 'SEX',
           wod_name 'WOD NAME',
           wod_mode 'WOD MODE',
           wod_type 'WOD TYPE',
           date_ 'DATE'
    FROM temp_leaderboard_session
    ORDER BY wod_level, wod_score DESC;


END;

CALL leaderboard_date('2019-01-05');

-- Vista para ver que atletas no se encuentran solventes --

CREATE PROCEDURE AthletesNotSolvent()
BEGIN
    SELECT id_athlete, name, telephone, DPI, solvency
    FROM athlete WHERE solvency = 0;
END;

-- Vista de PRs por movimiento por atleta más 90%, 80%, 70% y 60% del valor del PR, se debe incluir la fecha en la que se cumplió con el PR.--
DROP PROCEDURE IF EXISTS personal_records;

CREATE PROCEDURE personal_records(_id_athlete INT)
BEGIN
    DECLARE atleta INT;
    SELECT _id_athlete INTO atleta;

    TRUNCATE temp_pr_atleta;

    INSERT INTO temp_pr_atleta(athlete_id,
                               athlete_name,
                               specialty_name,
                               specialty_id,
                               specialty_type,
                               id_pr_sp,
                               value_pr_sp,
                               date_pr,
                               dim)
        SELECT
            a.id_athlete,
            a.name,
            sp.name,
            sp.id_specialty,
            sp.type,
            prsp.id_pr_sp,
            prsp.value,
            prsp.date_,
            sp.dim
        FROM personal_records_sp prsp
            INNER JOIN athlete a ON a.id_athlete = prsp.id_athlete
            INNER JOIN specialty sp ON sp.id_specialty = prsp.id_specialty
        WHERE a.id_athlete = atleta;

    SELECT
        athlete_name 'Nombre de atleta',
        specialty_name 'Especialidad',
        specialty_type 'Tipo',
        CONCAT(value_pr_sp, ' ',dim) 'PR',
        date_pr 'Fecha en que se alcanzo',
        CONCAT(pr_90, ' ',dim) '90% PR',
        CONCAT(pr_80, ' ',dim) '80% PR',
        CONCAT(pr_70, ' ',dim) '70% PR',
        CONCAT(pr_60, ' ',dim) '60% PR'
    FROM temp_pr_atleta
    GROUP BY specialty_type;
END;

CALL personal_records(4);


-- Vista de top 10 de resultados de WoDs “the girls" --
DROP PROCEDURE IF EXISTS Top10TheGirls;

CREATE PROCEDURE Top10TheGirls()
BEGIN
    SELECT
           w.name 'Nombre de WOD',
           w.mode 'Tipo de WOD',
           a.name 'Nombre de atleta',
           prw.value 'Record',
           prw.date_ 'Fecha de Record'
    FROM wod w
        INNER JOIN personal_records_wod prw ON w.id_wod = prw.id_wod
        INNER JOIN athlete a ON prw.id_athlete = a.id_athlete
    WHERE w.type = 'The Girls'
    ORDER BY prw.value DESC, w.mode
    LIMIT 10;
END;

-- Vista que permitir a cualquier atleta activo revisar log de sus clases y punteos desde que inicio en el box. --
CALL Top10TheGirls();

DROP PROCEDURE IF EXISTS LogClasesAtleta;

CREATE PROCEDURE LogClasesAtleta(_id_athlete INT)
BEGIN
    DECLARE atleta INT;
    SELECT _id_athlete INTO atleta;

    SELECT
           s.date_ 'Fecha de clase',
           s.hour 'Hora de clase',
           w.name 'Nombre de WOD',
           w.type 'Tipo de WOD',
           sr.wod_level 'Nivel de WOD',
           CONCAT(sr.wod_score, ' ', rx.dim) 'Score de WOD',
           sp.name 'Nombre de Especialidad',
           sp.type 'Tipo de Especialidad',
           CONCAT(sr.specialty_score, ' ', sp.dim) 'Score de especialidad'
    FROM session_results sr
        INNER JOIN session s ON s.id_session = sr.id_session_results
        INNER JOIN specialty sp ON s.id_specialty = sp.id_specialty
        INNER JOIN class c ON c.date_ = s.date_
        INNER JOIN wod w ON w.id_wod = c.id_wod
        INNER JOIN rxgoals rx ON rx.id_wod = w.id_wod
    WHERE s.id_athlete = atleta
    ORDER BY s.date_;
END;

CALL LogClasesAtleta(4);






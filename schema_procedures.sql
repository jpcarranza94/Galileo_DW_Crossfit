-- Vista de leaderboard diario --

USE crossfit;

DROP PROCEDURE IF EXISTS leaderboard_date;


CREATE PROCEDURE leaderboard_date(_date DATE)
BEGIN
    DECLARE sessionDate DATE;
    SELECT _date INTO sessionDate;

    TRUNCATE temp_leaderboard_session;



    INSERT INTO temp_leaderboard_session
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
        WHERE c.date_=sessionDate
        ORDER BY sr.wod_level, sr.wod_score DESC;

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
    FROM temp_leaderboard_session;


END;

CALL leaderboard_date('2020-03-16');

-- Vista para ver que atletas no se encuentran solventes --

CREATE PROCEDURE AthletesNotSolvent()
BEGIN
    SELECT id_athlete, name, telephone, DPI, solvency
    FROM athlete WHERE solvency = 0;
END;

-- Vista de PRs por movimiento por atleta más 90%, 80%, 70% y 60% del valor del PR, se debe incluir la fecha en la que se cumplió con el PR.--

CREATE PROCEDURE personal_records(_id_athlete INT)
BEGIN
    DECLARE atleta INT;
    SELECT _id_athlete INTO atleta;

    TRUNCATE temp_pr_atleta;
    
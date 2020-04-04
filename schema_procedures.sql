USE crossfit;

DROP PROCEDURE IF EXISTS leaderboard_date;

#temp_leaderboard_session(id_leaderboard, id_athlete, athlete_name, wod_level, wod_score, sex, wod_name, wod_mode, wod_type, date_)
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
               c.date_
        FROM session s
            INNER JOIN athlete a ON s.id_athlete = a.id_athlete
            INNER JOIN session_results sr ON sr.id_session_results=s.id_session
            INNER JOIN class c ON c.date_=s.date_
            INNER JOIN wod w ON c.id_wod = w.id_wod
        WHERE c.date_=sessionDate
        ORDER BY sr.wod_level, sr.wod_score DESC;

    SELECT
           id_athlete 'ID',
           athlete_name 'NAME',
           wod_level 'WOD LEVEL',
           wod_score 'SCORE',
           sex 'SEX',
           wod_name 'WOD NAME',
           wod_mode 'WOD MODE',
           wod_type 'WOD TYPE',
           date_ 'DATE'
    FROM temp_leaderboard_session;


END;

CALL leaderboard_date('2020-03-16');

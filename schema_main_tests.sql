-- PRUEBAS *****

-- Pruebas day_validation ------------------------------------------------------------------------------

/*
INSERT INTO class(id_wod, date) VALUES (NULL, '2020-03-22')
*/
/*
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-21');
INSERT INTO  session(id_class,hour) VALUES (1,'5:00');
INSERT INTO  session(id_class,hour) VALUES (1,'6:00');
INSERT INTO  session(id_class,hour) VALUES (1,'8:00');
INSERT INTO  session(id_class,hour) VALUES (1,'9:30');
INSERT INTO  session(id_class,hour) VALUES (1,'12:00');
INSERT INTO  session(id_class,hour) VALUES (1,'11:00');
INSERT INTO  session(id_class,hour) VALUES (1,'19:30');
-- TRUNCATE TABLE session;
*/

-- Pruebas athlete_session_per_day ----------------------------------------------------------------------
/*
-- Prueba 'Solamente se puede una clase por dia'
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'Andre', null, null, null, null, null, null, null);
INSERT INTO  session(id_session, id_athlete, id_class, hour) VALUES (1, 1, 1, '5:00');
SELECT s.id_athlete FROM athlete AS a, class AS c, session AS s WHERE c.id_class=1 AND a.id_athlete=1;
INSERT INTO  session(id_session, id_athlete, id_class, hour) VALUES (2, 1, 1, '6:00');
SELECT s.id_athlete FROM athlete AS a, class AS c, session AS s WHERE c.id_class=1 AND a.id_athlete=1;

INSERT INTO class(id_class,id_wod, date) VALUES (2, NULL, '2020-03-17');
INSERT INTO  session(id_session, id_athlete, id_class, hour) VALUES (3, 1, 2, '5:00');
SELECT s.id_athlete FROM athlete AS a, class AS c, session AS s WHERE c.id_class=2 AND a.id_athlete=1;
INSERT INTO  session(id_session, id_athlete, id_class, hour) VALUES (4, 1, 2, '6:00');
SELECT s.id_athlete FROM athlete AS a, class AS c, session AS s WHERE c.id_class=2 AND a.id_athlete=1;
*/
/*
-- Prueba 'Un coach no puede tener más de 3 clases por dia'
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'ElCoach', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (2, 'Andre', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (3, 'JuanPa', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (4, 'Preng', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (5, 'Marlon', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (6, 'Luis', null, null, null, null, null, null, null);

INSERT INTO coach (id_coach, id_athlete) VALUES (1,1);
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (1, 1, 1, 2, '5:00');
SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (2, 1, 1, 3, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (3, 1, 1, 4, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (4, 1, 1, 5, '12:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '18:30');
SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '12:00'); -- Este si lo debe de agregar
*/
/*
-- Prueba 'El coach no se puede asignar a su misma clase'
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'ElCoach', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (2, 'Andre', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (3, 'JuanPa', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (4, 'Preng', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (5, 'Marlon', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (6, 'Luis', null, null, null, null, null, null, null);

INSERT INTO coach (id_coach, id_athlete) VALUES (1,1);
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (1, 1, 1, 2, '5:00');
SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (2, 1, 1, 3, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (3, 1, 1, 4, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (4, 1, 1, 5, '12:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 1, '18:30'); -- No deberia de hacerlo
SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '12:00'); -- Este si lo debe de agregar
*/



-- Query para unir 3 tablas (session, class, athlete)
/*
SELECT
       s.id_session, c.id_class,a.id_athlete
FROM
     session as s
JOIN
     class as c ON s.id_class=c.id_class
JOIN
    athlete as a ON s.id_athlete = a.id_athlete
WHERE
    a.id_athlete = 1
        AND
    c.id_class = 2;
*/
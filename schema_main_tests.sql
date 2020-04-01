USE crossfit;

/*

truncate session;
truncate class;
truncate athlete;
truncate coach;
truncate personal_records_sp;
truncate personal_records_wod;
truncate rxgoals;
truncate specialty;
truncate warmup;
truncate wod;
*/



/*
-- PRUEBAS TRIGGERS*****

-- Pruebas day_validation ------------------------------------------------------------------------------

/*
INSERT INTO class(id_wod, date) VALUES (NULL, '2020-03-22')
*/
-- Pruebas 'Ese horario no estan disponible de lunes a viernes' y 'Ese horario no estan disponible el dia sabado'
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
-- Pruebas 'Ese horario no estan disponible de lunes a viernes' y 'Ese horario no estan disponible el dia sabado'
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

-- Prueba 'Un coach no puede tener más de 3 clases por dia'

/*
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');

INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'ElCoach', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (2, 'Andre', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (3, 'JuanPa', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (4, 'Preng', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (5, 'Marlon', null, null, null, null, null, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (6, 'Luis', null, null, null, null, null, null, null);

INSERT INTO coach (id_coach, id_athlete) VALUES (1,1);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (1, 1, 1, 2, '5:00');
-- SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (2, 1, 1, 3, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (3, 1, 1, 4, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (4, 1, 1, 5, '12:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '12:00');

INSERT INTO coach (id_coach, id_athlete) VALUES (2,3);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (6, 2, 1, 1, '16:30');

INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (7, 'Jortolomeo', null, null, null, null, null, null, null);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (7, 2, 1, 7, '17:30');

SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
-- INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '12:00'); -- Este si lo debe de agregar
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

-- Pruebas solvency_validations ----------------------------------------------------------------------

/*
INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');

INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'ElCoach', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (2, 'Andre', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (3, 'JuanPa', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (4, 'Preng', null, null, null, null, 0, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (5, 'Marlon', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (6, 'Luis', null, null, null, null, 1, null, null);

INSERT INTO coach (id_coach, id_athlete) VALUES (1,1);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (1, 1, 1, 2, '5:00');
-- SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (2, 1, 1, 3, '6:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (3, 1, 1, 4, '6:00');

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (4, 1, 1, 5, '12:00');
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (5, 1, 1, 6, '12:00');

INSERT INTO coach (id_coach, id_athlete) VALUES (2,3);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (6, 2, 1, 1, '16:30');

INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (7, 'Jortolomeo', null, null, null, null, 0, null, null);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour) VALUES (7, 2, 1, 7, '17:30');

SELECT id_session,id_athlete,id_coach,id_class,hour FROM session;
*/

-- Pruebas update_max_pr_sp ----------------------------------------------------------------------


INSERT INTO class(id_class,id_wod, date) VALUES (1, NULL, '2020-03-16');
INSERT INTO class(id_class,id_wod, date) VALUES (2, NULL, '2020-03-17');

INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (1, 'ElCoach', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (2, 'Andre', null, null, null, null, 1, null, null);
INSERT INTO athlete (id_athlete, name, weight, height, age, sex, solvency, telephone, DPI) VALUES (3, 'JuanPa', null, null, null, null, 1, null, null);

INSERT INTO coach (id_coach, id_athlete) VALUES (1,1);

INSERT INTO specialty(id_specialty, description, type, dim) VALUES (1,"Que dolor",'Skill','seg');
INSERT INTO specialty(id_specialty, description, type, dim) VALUES (2,"Hola",'Skill','seg');

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour, id_specialty) VALUES (1, 1, 1, 2, '5:00',1);
INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour, id_specialty) VALUES (2, 1, 1, 3, '6:00',1);

INSERT personal_records_sp(id_athlete, id_specialty, date, value) VALUES (2, 1,"2000-03-11", 25);


select * from personal_records_sp;
select * from session;
select * from session_results;



INSERT INTO session_results(id_session_results, wod_level, wod_score, specialty_score, id_session) VALUE (5,'SCALED',null,50,1);
INSERT INTO session_results(id_session_results, wod_level, wod_score, specialty_score, id_session) VALUE (6,'SCALED',null,40,2);

INSERT INTO  session(id_session, id_coach, id_class, id_athlete, hour, id_specialty) VALUES (3, 1, 2, 3, '6:00',2);
INSERT INTO session_results(id_session_results, wod_level, wod_score, specialty_score, id_session) VALUE (11,'SCALED',null,489,3);


SELECT MAX(p.value) FROM personal_records_sp p where p.id_athlete='3' AND p.id_specialty='1';
SELECT sr.specialty_score FROM session_results sr  INNER JOIN session s on sr.id_session = s.id_session WHERE sr.id_session = '3';

SELECT s.id_athlete FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = '1';
SELECT s.id_specialty FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = '1';
SELECT c.date FROM class c INNER JOIN session s on c.id_class=s.id_class INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = '1';

SELECT * from personal_records_sp;

SELECT MAX(p.value) FROM personal_records_sp p where p.id_athlete='3' AND p.id_specialty='1';


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
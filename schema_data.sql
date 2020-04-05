USE crossfit;

# Insertar datos de warmup
INSERT INTO  warmup(id_warmup, description) VALUES (1, 'General');
INSERT INTO  warmup(id_warmup, description) VALUES (2, 'Dinámico');
INSERT INTO  warmup(id_warmup, description) VALUES (3, 'Metabólico');
INSERT INTO  warmup(id_warmup, description) VALUES (4, 'Gimnástico');

# Insertar datos de wod THE GIRLS [21 WODS]
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (1,'BARBARA','20 Pulls-ups ...','FOR TIME','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (1,'M',10,15,'rounds');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (1,'F',8,12,'rounds');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (2,'CHELSEA','5 Pulls-ups ...','EMOM','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (2,'M',25,20,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (2,'F',27,22,'sec');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (3,'MARY','5 handstands ...','AMRAP','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (3,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (3,'F',17,12,'sec');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (4,'CINDY','20 Pulls-ups ...','AMRAP','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (4,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (4,'F',17,12,'sec');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (5,'ANNIE','20 Pulls-ups ...','FOR TIME','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (5,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (5,'F',17,12,'sec');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (6,'NICOLE','20 Pulls-ups ...','AMRAP','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (6,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (6,'F',17,12,'sec');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (7,'ANGIE','20 Pulls-ups ...','FOR TIME','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (7,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (7,'F',17,12,'sec');


INSERT INTO wod(id_wod, name, description, mode, type) VALUES (8,'EVA','800m run ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (8,'M',10,15,'rounds');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (8,'F',8,12,'rounds');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (9,'HELEN','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (9,'M',10,15,'rounds');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (9,'F',8,12,'rounds');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (10,'KELLY','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (10,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (10,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (11,'KAREN','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (11,'M',15,10,'sec');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (11,'F',17,12,'sec');

INSERT INTO wod(id_wod, name, description, mode, type) VALUES (12,'AMANDA','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (12,'M',135,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (12,'F',100,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (13,'JACKIE','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (13,'M',45,65,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (13,'F',40,60,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (14,'DIANE','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (14,'M',225,250,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (14,'F',200,225,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (15,'FRAN','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (15,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (15,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (16,'ELIZABETH','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (16,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (16,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (17,'NANCY','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (17,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (17,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (18,'LYNNE','20 Pulls-ups ...','FOR MAX WEIGTH','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (18,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (18,'F',80,120,'kgs');

INSERT INTO wod(id_wod, name, description, mode, type) VALUES (19,'ISABEL','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (19,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (19,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (20,'LINDA','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (20,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (20,'F',80,120,'kgs');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (21,'GRACE','20 Pulls-ups ...','TABATA','The Girls');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (21,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (21,'F',80,120,'kgs');

# Insertar datos de wod THE HEROES
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (22,'MURPH','20 Pulls-ups ...','TABATA','The Heroes');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (22,'M',10,15,'rounds');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (22,'F',8,12,'rounds');
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (23,'JOSH','20 Pulls-ups ...','FOR MAX WEIGTH','The Heroes');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (23,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (23,'F',80,120,'kgs');

# Insertar datos de wod Normal
INSERT INTO wod(id_wod, name, description, mode, type) VALUES (24,'GENERAL','20 Pulls-ups ...','FOR MAX WEIGTH','Normal');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (24,'M',100,150,'kgs');
INSERT INTO rxgoals(ID_WOD, SEX, RX, RXPLUS, DIM) VALUES (24,'F',80,120,'kgs');

#Insertar datos de Specialities
#`type` ENUM ('Skill','Strength','Lifting','Complex')
#  `dim` ENUM ('mts','seg','lbs'),
INSERT INTO specialty(name, description, type, dim) VALUES ('Box Jump','Salto al cajón - se mide en cantidad y altura de la caja.','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('BP','Bench Press: Press de banca - se mide en cantidad de repeticiones y peso (*).','Complex','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('BS','Back Squat: Sentadilla trasera con peso se mide en cantidad de repeticiones y peso (*).','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('BRP','Burpee.','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('C&J','Clean and Jerk: Cargada y envión (*).','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('CLN','Clean: Cargada - Versiones adicionales incluyen, Hang Clean (HC), Power Clean (PC), y Squat Clean (SC) (*).','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('CTB / C2B','Chest to Bar: Pecho a la barra.','Lifting','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('DL','Dead lift: Peso Muerto (*).','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('DU’s','Double Unders: Dos vueltas de la comba en un salto.','Lifting','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('FS','Front Squat: Sentadilla frontal con peso (*).','Complex','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('HSPU','Hand Stand Push-Up: Pino flexión ó Parada de manos con flexión.','Complex','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('K2E','Knees to Elbows: Rodillas a los codos (en la barra).','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('MU','Muscle Up: Movimientos combinados que encadenan un balanceo con un fondo de brazos (puede ser en anillas o en barras).','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('OHS','Overhead squat: Sentadilla con peso por encima de la cabeza (*).','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('PJ','Push Jerk (*)','Lifting','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('PP','Push Press (*)','Complex','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('PU','Pull Up or Push Up: Dominadas o flexiones.','Lifting','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('SDHP','Sumo Dead lift High Pull: Peso muerto en posición de sumo, empujando la barra hasta la altura de la barbilla.','Complex','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('SJ','Split Jerk (*)','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('SN','Snatch: Versiones adicionales incluyen, Hang Snatch (HS), Power Snatch (PS), y Squat Snatch (SS) (*).','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('SP','Shoulder Press: Press de hombros (*).','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('SQ','Squat: Sentadilla.','Lifting','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('TtB','Toes to Bar: Pies a la barra.','Skill','seg');
INSERT INTO specialty(name, description, type, dim) VALUES ('UB','Unbroken: Es cuando se realiza un ejercicio de principio a fin sin descanso.','Strength','lbs');
INSERT INTO specialty(name, description, type, dim) VALUES ('WB','Wall Balls: Lanzamiento de bola a la pared','Lifting','lbs');

#Datos mokarooo
#generar 25 atletas
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (1, 'Helena', 68.59, 1.87, 18, 'F', 1, '4553423896', '9129900297');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (2, 'Baily', 68.5, 1.25, 28, 'F', 1, '6302133493', '9012115529');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (3, 'Elva', 62.25, 1.35, 23, 'F', 1, '3685054844', '8952268865');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (4, 'Lynea', 66.68, 1.48, 27, 'F', 1, '3087000086', '2037216283');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (5, 'Austin', 78.27, 1.61, 22, 'M', 1, '9498977697', '8663124878');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (6, 'Junette', 71.84, 1.42, 23, 'F', 1, '5414848391', '2411440855');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (7, 'Carita', 63.0, 1.72, 27, 'M', 1, '7308222732', '9973924870');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (8, 'Essa', 73.64, 1.63, 28, 'M', 1, '5263639642', '8376426230');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (9, 'Maureen', 64.12, 1.39, 24, 'F', 1, '7107477598', '8956441934');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (10, 'Zia', 71.92, 1.54, 33, 'M', 1, '7129370003', '2816068242');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (11, 'Carmita', 62.28, 1.33, 26, 'F', 1, '4953783644', '9602203086');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (12, 'Audy', 59.01, 1.43, 22, 'F', 1, '9121934845', '2945244606');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (13, 'Rita', 68.13, 1.66, 28, 'F', 1, '8781228965', '5612094610');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (14, 'Betti', 72.74, 1.69, 26, 'M', 1, '4029124922', '9836042758');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (15, 'Lari', 68.73, 1.55, 32, 'F', 1, '4177324682', '5938575570');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (16, 'Adler', 66.55, 1.64, 29, 'F', 1, '9275983229', '3635162006');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (17, 'Farly', 59.07, 1.57, 30, 'M', 1, '5198251859', '3751781726');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (18, 'Lauryn', 63.03, 1.63, 12, 'M', 1, '3955098446', '3987609228');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (19, 'Jelene', 64.5, 1.87, 26, 'F', 1, '2739584976', '6078233535');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (20, 'Darbie', 55.14, 1.56, 23, 'M', 1, '8226368431', '4783000102');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (21, 'Pate', 66.43, 1.41, 30, 'M', 1, '4428917402', '6209289210');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (22, 'Beatriz', 66.93, 1.58, 27, 'M', 1, '8691353486', '4012648403');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (23, 'Deanne', 58.59, 1.77, 22, 'M', 1, '8884371558', '3463713896');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (24, 'Lonny', 62.51, 1.51, 24, 'F', 1, '1605733138', '9101385653');
insert into athlete (id_athlete, name, weight, height, age, sex, solvency , telephone, DPI) values (25, 'Ulric', 69.06, 1.78, 27, 'M', 1, '1748583757', '9846112121');

#Primeros 10 son coaches
insert into coach (id_coach, id_athlete) values (1, 1);
insert into coach (id_coach, id_athlete) values (2, 2);
insert into coach (id_coach, id_athlete) values (3, 3);
insert into coach (id_coach, id_athlete) values (4, 4);
insert into coach (id_coach, id_athlete) values (5, 5);

#Creamos las clases
insert into class (date_, id_wod) values ('2019-01-05', 6);
insert into class (date_, id_wod) values ('2019-01-07', 3);
insert into class (date_, id_wod) values ('2019-01-08', 18);
insert into class (date_, id_wod) values ('2019-01-09', 7);
insert into class (date_, id_wod) values ('2019-01-10', 9);
insert into class (date_, id_wod) values ('2019-01-11', 11);
insert into class (date_, id_wod) values ('2019-01-12', 19);
insert into class (date_, id_wod) values ('2019-01-14', 1);
insert into class (date_, id_wod) values ('2019-01-15', 16);
insert into class (date_, id_wod) values ('2019-01-16', 21);

#Creamos 750 sessiones
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (1, 2, 3, 4, 5, '2019-01-05', '16:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (2, 22, 4, 25, 1, '2019-01-07', '5:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (3, 4, 1, 19, 2, '2019-01-08', '19:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (4, 7, 2, 20, 2, '2019-01-09', '6:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (5, 10, 2, 6, 3, '2019-01-10', '6:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (6, 22, 1, 11, 4, '2019-01-11', '11:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (7, 19, 1, 17, 2, '2019-01-12', '8:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (8, 21, 3, 11, 5, '2019-01-14', '12:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (9, 22, 3, 12, 2, '2019-01-15', '18:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (10, 4, 3, 4, 3, '2019-01-16', '5:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (11, 11, 4, 20, 4, '2019-01-05', '11:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (12, 25, 1, 5, 4, '2019-01-07', '17:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (13, 2, 4, 9, 1, '2019-01-08', '7:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (15, 25, 3, 4, 1, '2019-01-10', '6:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (16, 19, 2, 18, 1, '2019-01-11', '18:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (17, 17, 4, 10, 4, '2019-01-12', '8:00');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (18, 14, 4, 15, 3, '2019-01-14', '16:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (19, 6, 3, 11, 3, '2019-01-15', '19:30');
insert into session (id_session, id_specialty, id_warmup, id_athlete, id_coach, date_, hour) values (20, 13, 1, 16, 1, '2019-01-16', '19:30');



insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (1, 'RX', 34, 43);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (2, 'RX', 38, 19);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (3, 'RX', 45, 32);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (4, 'SCALED', 9, 36);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (5, 'RX', 35, 31);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (6, 'RX+', 29, 28);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (7, 'SCALED', 25, 45);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (8, 'SCALED', 48, 25);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (9, 'RX', 23, 34);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (10, 'SCALED', 40, 21);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (11, 'RX', 47, 15);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (12, 'SCALED', 68, 48);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (13, 'RX', 68, 26);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (14, 'RX', 69, 30);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (15, 'SCALED', 43, 41);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (16, 'SCALED', 51, 11);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (17, 'RX', 5, 42);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (18, 'RX+', 64, 45);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (19, 'RX+', 53, 41);
insert into session_results (id_session_results, wod_level, wod_score, specialty_score) values (20, 'RX+', 61, 15);










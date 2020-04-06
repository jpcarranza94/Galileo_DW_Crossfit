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













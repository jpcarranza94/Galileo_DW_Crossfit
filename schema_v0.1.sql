CREATE TABLE `wod` (
  `id_wod` INT,
  `name` VARCHAR(25),
  `description` VARCHAR(500),
  `mode` ENUM ('AMRAP','EMOM','FOR TIME', 'TABATA', 'FOR MAX WEIGTH'),
  `type` ENUM ('The Girls','The Heroes','Normal'),
  `date` DATE,
  PRIMARY KEY (`id_wod`)
);

CREATE TABLE `personal_records_sp` (
  `id_pr_sp` INT,
  `id_speciality` INT,
  `id_athlete` INT,
  `dia` TIMESTAMP,
  `value` DOUBLE,
  PRIMARY KEY (`id_pr_sp`),
  KEY `FK` (`id_speciality`, `id_athlete`)
);

CREATE TABLE `rxgoals` (
  `id_rxgoals` INT,
  `id_wod` INT,
  `sex` ENUM ('M','F'),
  `rx` INT,
  `rxplus` INT,
  `dim` ENUM ('kgs','sec','reps','rounds'),
  PRIMARY KEY (`id_rxgoals`),
  KEY `FK` (`id_wod`)
);

CREATE TABLE `class` (
  `id_class` INT,
  `id_wod` INT,
  `date` DATE,
  PRIMARY KEY (`id_class`),
  KEY `FK` (`id_wod`)
);

CREATE TABLE `warmup` (
  `id_warmup` INT,
  `description` VARCHAR(500),
  PRIMARY KEY (`id_warmup`)
);

CREATE TABLE `athlete` (
  `id_athlete` INT,
  `name` VARCHAR(20),
  `weight` DOUBLE,
  `height` DOUBLE,
  `age` INT,
  `sex` ENUM ('M','F'),
  `solvency` BOOLEAN,
  `telephone` INT,
  `DPI` INT,
  PRIMARY KEY (`id_athlete`)
);

CREATE TABLE `speciality` (
  `id_speciality` INT,
  `description` VARCHAR(500),
  `type` ENUM ('Skill','Strength','Lifting','Complex'),
  `dim` ENUM ('mts','seg','lbs'),
  PRIMARY KEY (`id_speciality`)
);

CREATE TABLE `coach` (
  `id_coach` INT,
  `id_athelte` INT,
  PRIMARY KEY (`id_coach`),
  KEY `FK` (`id_athelte`)
);

CREATE TABLE `personal_records_wod` (
  `id_pr_wod` INT,
  `id_wod` INT,
  `id_athlete` INT,
  `dia` TIMESTAMP,
  `value` DOUBLE,
  PRIMARY KEY (`id_pr_wod`),
  KEY `FK` (`id_wod`, `id_athlete`)
);

CREATE TABLE `session` (
  `id_session` INT,
  `id_specialty` INT,
  `id_warmup` INT,
  `id_wod` INT,
  `id_athlete` INT,
  `id_coach` INT,
  `id_class` INT,
  `wod_level` ENUM ('RX','RX+','SCALED'), 
  `wod_score` INT,
  `specialty_score` INT,
  `hour` ENUM ('8:00','6:00','7:00','9:30','11:00','12:00','16:30','17:30','18:30'),
  PRIMARY KEY (`id_session`),
  KEY `FK` (`id_specialty`, `id_warmup`, `id_wod`, `id_athlete`, `id_coach`, `id_class`)
);


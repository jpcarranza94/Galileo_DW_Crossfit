CREATE TABLE `personal_records_sp` (
  `id_pr_sp` INT,
  `id_speciality` INT,
  `id_athlete` INT,
  `dia` TIMESTAMP,
  `value` DOUBLE,
  PRIMARY KEY (`id_pr_sp`),
  KEY `FK` (`id_speciality`, `id_athlete`)
);

CREATE TABLE `athlete` (
  `id_pr_sp` INT,
  `id_pr_wod` INT,
  `id_athlete` INT,
  `name` VARCHAR(20),
  `weight` DOUBLE,
  `height` DOUBLE,
  `age` INT,
  `sex` ENUM ('M','F'),
  `solvency` BOOLEAN,
  `telephone` INT,
  `DPI` INT,
  PRIMARY KEY (`id_athlete`),
  KEY `FK` (`id_pr_sp`, `id_pr_wod`)
);

CREATE TABLE `warmup` (
  `id_warmup` INT,
  `description` VARCHAR(500),
  PRIMARY KEY (`id_warmup`)
);

CREATE TABLE `speciality` (
  `id_speciality` INT,
  `description` VARCHAR(500),
  `type` ENUM ('Skill','Strength','Lifting','Complex'),
  `dim` ENUM ('mts','seg','lbs'),
  PRIMARY KEY (`id_speciality`)
);

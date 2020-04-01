DROP DATABASE IF EXISTS crossfit;
CREATE DATABASE crossfit;

USE crossfit;

CREATE TABLE  `wod` (
  `id_wod` INT AUTO_INCREMENT,
  `name` VARCHAR(25),
  `description` VARCHAR(500),
  `mode` ENUM ('AMRAP','EMOM','FOR TIME', 'TABATA', 'FOR MAX WEIGTH'),
  `type` ENUM ('The Girls','The Heroes','Normal'),
  `date` DATE,
  PRIMARY KEY (`id_wod`)
);

CREATE TABLE `athlete` (
  `id_athlete` INT AUTO_INCREMENT,
  `name` VARCHAR(20),
  `weight` FLOAT(5,2),
  `height` FLOAT(3,2),
  `age` INT,
  `sex` ENUM ('M','F'),
  `solvency` BOOLEAN NOT NULL,
  `telephone` INT,
  `DPI` INT,
  PRIMARY KEY (`id_athlete`)
);

CREATE TABLE `warmup` (
  `id_warmup` INT AUTO_INCREMENT,
  `description` VARCHAR(500),
  PRIMARY KEY (`id_warmup`)
);

CREATE TABLE `specialty` (
  `id_specialty` INT AUTO_INCREMENT,
  `description` VARCHAR(500),
  `type` ENUM ('Skill','Strength','Lifting','Complex'),
  `dim` ENUM ('mts','seg','lbs'),
  PRIMARY KEY (`id_specialty`)
);

CREATE TABLE `personal_records_sp` (
  `id_pr_sp` INT AUTO_INCREMENT,
  `id_athlete` INT,
  `id_specialty` INT,
  `date` date,
  `value` DOUBLE,
  PRIMARY KEY (`id_pr_sp`),
  CONSTRAINT `fk_id_athlete_pra` FOREIGN KEY (id_athlete) REFERENCES athlete (id_athlete) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_id_specialty_prs` FOREIGN KEY (id_specialty) REFERENCES specialty (id_specialty) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `rxgoals` (
  `id_rxgoals` INT AUTO_INCREMENT,
  `id_wod` INT,
  `sex` ENUM ('M','F'),
  `rx` INT,
  `rxplus` INT,
  `dim` ENUM ('kgs','sec','reps','rounds'),
  PRIMARY KEY (`id_rxgoals`),
  CONSTRAINT `fk_id_wod_rw` FOREIGN KEY (id_wod) REFERENCES wod (id_wod) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `class` (
  `id_class` INT AUTO_INCREMENT,
  `id_wod` INT,
  `date` DATE UNIQUE,
  `day_week` INT GENERATED ALWAYS AS (DAYOFWEEK(date)),
  PRIMARY KEY (`id_class`),
  CONSTRAINT `check_day_week` CHECK ( day_week <> 1 ),
  CONSTRAINT `fk_id_wod_cw` FOREIGN KEY (id_wod) REFERENCES wod (id_wod) ON DELETE set null ON UPDATE CASCADE
);

CREATE TABLE `coach` (
  `id_coach` INT AUTO_INCREMENT,
  `id_athlete` INT,
  PRIMARY KEY (`id_coach`),
  CONSTRAINT `fk_id_athlete_ca` FOREIGN KEY (id_athlete) REFERENCES athlete (id_athlete) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `personal_records_wod` (
  `id_pr_wod` INT AUTO_INCREMENT,
  `id_wod` INT,
  `id_athlete` INT,
  `date` date,
  `value` DOUBLE,
  PRIMARY KEY (`id_pr_wod`),
  CONSTRAINT `fk_id_wod_pw` FOREIGN KEY (id_wod) REFERENCES wod (id_wod) ON DELETE SET NULL ON UPDATE    CASCADE,
  CONSTRAINT `fk_id_athlete_pa` FOREIGN KEY (id_athlete) REFERENCES athlete (id_athlete) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE `session` (
  `id_session` INT AUTO_INCREMENT,
  `id_specialty` INT,
  `id_warmup` INT,
  `id_athlete` INT,
  `id_coach` INT,
  `id_class` INT,
  `hour` ENUM ('5:00','6:00','7:00','8:00','9:30','11:00','12:00','16:30','17:30','18:30','19:30'),
  PRIMARY KEY (`id_session`),
  CONSTRAINT `fk_id_specialty_ss` FOREIGN KEY (id_specialty) REFERENCES specialty (id_specialty) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_id_warmup_sw` FOREIGN KEY (id_warmup) REFERENCES warmup (id_warmup) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_id_athlete_sa` FOREIGN KEY (id_athlete) REFERENCES athlete (id_athlete) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_id_coach_sc` FOREIGN KEY (id_coach) REFERENCES coach (id_coach) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_id_class_sc` FOREIGN KEY (id_class) REFERENCES class (id_class) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE `session_results` (
  `id_session_results` INT AUTO_INCREMENT,
  `wod_level` ENUM ('RX','RX+','SCALED'),
  `wod_score` INT,
  `specialty_score` INT,
  id_session INT,

  PRIMARY KEY (`id_session_results`),
  CONSTRAINT `fk_id_session_sr` FOREIGN KEY (id_session) REFERENCES session(id_session) ON DELETE CASCADE ON UPDATE CASCADE
);

-- -----------------------------Triggers -------------------------------------------------------------------------------

Delimiter //
CREATE TRIGGER day_validations
    BEFORE INSERT ON session FOR EACH ROW
    BEGIN

        -- Clases de Lunes a Viernes en los horarios
        IF ((SELECT c.day_week FROM class AS c WHERE c.id_class=new.id_class) <> 7) AND
           ((new.hour IN ('8:00','9:30','11:00'))) THEN
            signal sqlstate '45000' SET MESSAGE_TEXT = 'Ese horario no estan disponible de lunes a viernes';

        -- Clases Sabados en los horarios
        ELSEIF ((SELECT c.day_week FROM class AS c WHERE c.id_class=new.id_class) = 7) AND
        (new.hour IN ('5:00','6:00','7:00','12:00','16:30','17:30','18:30','19:30')) THEN
           signal sqlstate '45000' SET MESSAGE_TEXT = 'Ese horario no estan disponible el dia sabado';

        END IF;

    END;
//
Delimiter ;

-- ------------------------------------------------

Delimiter //
CREATE TRIGGER athlete_coach_validations
    BEFORE INSERT ON session FOR EACH ROW
    BEGIN

        -- El atleta solo puede recibir una clase por día
        IF ((SELECT s.id_session FROM session as s JOIN class as c ON s.id_class=c.id_class JOIN athlete as a ON s.id_athlete = a.id_athlete
        WHERE a.id_athlete = new.id_athlete AND c.id_class = new.id_class) IS NOT NULL) THEN
           signal sqlstate '45000' SET MESSAGE_TEXT = 'Solamente se puede una clase por dia';

        -- El Coach no puede ser atleta y coach en la misma clase
        ELSEIF ((SELECT a.id_athlete FROM athlete a INNER JOIN coach c on a.id_athlete = c.id_athlete WHERE id_coach=new.id_coach) = new.id_athlete) THEN
           signal sqlstate '45000' SET MESSAGE_TEXT = 'El coach puede ser atleta de su misma clase';

        -- El Coach no puede tener mas de 3 clases por dia
        ELSEIF ((SELECT COUNT(DISTINCT s.hour) FROM session as s WHERE s.id_coach=new.id_coach and s.id_class=new.id_class) = 3 ) AND
               ((SELECT DISTINCT se2.hour FROM  session as se2 WHERE se2.hour = new.hour) IS NULL )THEN
           signal sqlstate '45000' SET MESSAGE_TEXT = 'Un coach no puede tener más de 3 clases por dia';

        END IF;

    END;
//
Delimiter ;

-- ------------------------------------------------

Delimiter //
CREATE TRIGGER solvency_validations
    BEFORE INSERT ON session FOR EACH ROW
    BEGIN

        -- Atleta no solvente
        IF ((SELECT a.solvency FROM athlete a WHERE a.id_athlete = new.id_athlete) = 0) THEN
            signal sqlstate '45000' SET MESSAGE_TEXT = 'Este atleta no se encuentra solvente de pago';
        END IF;

    END;
//
Delimiter ;

-- ------------------------------------------------

Delimiter //
CREATE TRIGGER update_max_pr_sp
    BEFORE INSERT ON session_results FOR EACH ROW
    BEGIN

        DECLARE max_pr_score INT;
        SET max_pr_score = (SELECT MAX(p.value) FROM personal_records_sp p where p.id_athlete= (SELECT s.id_specialty FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session)
             AND p.id_specialty =
        ((SELECT s.id_specialty FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session)));


        IF (max_pr_score IS NULL ) THEN
             INSERT personal_records_sp(id_athlete, id_specialty, date, value) VALUES (
            (SELECT s.id_athlete FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            (SELECT s.id_specialty FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            (SELECT c.date FROM class c INNER JOIN session s on c.id_class=s.id_class INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            new.specialty_score);

        ELSEIF ((SELECT sr.specialty_score FROM session_results sr  INNER JOIN session s on sr.id_session = s.id_session WHERE sr.id_session = new.id_session) >
             max_pr_score) THEN
           INSERT personal_records_sp(id_athlete, id_specialty, date, value) VALUES (
            (SELECT s.id_athlete FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            (SELECT s.id_specialty FROM session s INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            (SELECT c.date FROM class c INNER JOIN session s on c.id_class=s.id_class INNER JOIN session_results sr on sr.id_session = s.id_session WHERE sr.id_session = new.id_session),
            new.specialty_score);
        END IF;

    END;
//
Delimiter ;


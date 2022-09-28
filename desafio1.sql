DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.users(
    users_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    users_name VARCHAR(100) NOT NULL,
    users_age INT NOT NULL,
    users_plan INT NOT NULL,
    users_plan_date DATE NOT NULL,
    users_plan_value FLOAT NOT NULL,
    FOREIGN KEY (users_plan) REFERENCES plan (plan_id),
    FOREIGN KEY (users_plan_value) REFERENCES plan (plan_value),
) engine = InnoDB;

CREATE TABLE SpotifyClone.plan(
    plan_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(50) NOT NULL,
    plan_value FLOAT NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproduction(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

CREATE TABLE SpotifyClone.following(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

CREATE TABLE SpotifyClone.song(
    coluna1 tipo restricoes,
    coluna2 tipo restricoes,
    colunaN tipo restricoes,
) engine = InnoDB;

INSERT INTO SpotifyClone.users (users_name, users_age)
VALUES
  ('Barbara Liskov', 82, '2019-10-20', 1),
  ('Robert Cecil Martin', 58, '2017-01-06', 1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13',3),
  ('Jorge Amado', 58, '2017-02-17', 3);

INSERT INTO SpotifyClone.plan (plan_name, plan_value)
VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.reproduction (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');

INSERT INTO SpotifyClone.following (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');

INSERT INTO SpotifyClone.album (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');

INSERT INTO SpotifyClone.song (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');

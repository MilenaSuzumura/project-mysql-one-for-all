DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plan(
    plan_id  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(50) NOT NULL,
    plan_value FLOAT NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.artist(
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(30) NOT NULL,
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(30) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    CONSTRAINT PRIMARY KEY(artist_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.song(
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(30) NOT NULL,
    song_duration INT NOT NULL,
    song_years YEAR NOT NULL,
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    FOREIGN KEY (album_id) REFERENCES album (album_id),
    CONSTRAINT PRIMARY KEY(artist_id, album_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    users_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    users_name VARCHAR(100) NOT NULL,
    users_age INT NOT NULL,
    plan_id INT NOT NULL,
    users_plan_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plan (plan_id),
    CONSTRAINT PRIMARY KEY(plan_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproduction(
    reproduction_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    reproduction_date DATE NOT NULL,
    song_id INT NOT NULL,
    users_id INT NOT NULL,
    FOREIGN KEY (song_id) REFERENCES song (song_id),
    FOREIGN KEY (users_id) REFERENCES users (users_id),
    CONSTRAINT PRIMARY KEY(song_id, users_id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.following(
    following_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_id INT NOT NULL,
    users_id INT NOT NULL,
    FOREIGN KEY (artist_id) references artist (artist_id),
    FOREIGN KEY (users_id) references users (users_id),
    CONSTRAINT PRIMARY KEY(artist_id, users_id),
) engine = InnoDB;

INSERT INTO SpotifyClone.plan (plan_name, plan_value)
VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.artist (artist_name)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

INSERT INTO SpotifyClone.album (album_name, artist_id)
VALUES
  ('Renaissance', 1),
  ('Jazz', 2),
  ('Hot Space', 2),
  ('Falso Brilhante', 3),
  ('Vento de Maio', 3),
  ('QVVJFA?', 4),
  ('Somewhere Far Beyond', 5),
  ('I Put A Spell On You', 6);

INSERT INTO SpotifyClone.song (song_name, song_duration, song_years, artist_id, album_id)
VALUES
  ('BREAK MY SOUL', 279, 2022, 1, 1),
  ('VIRGO’S GROOVE', 369, 2022, 1, 1),
  ('ALIEN SUPERSTAR', 116, 2022, 1, 1),
  ('Don’t Stop Me Now', 203, 1978, 2, 2),
  ('Under Pressure', 152, 1982, 2, 3),
  ('Como Nossos Pais', 105, 1998, 3, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 2001, 3, 5),
  ('Samba em Paris', 267, 2003, 4, 6),
  ('The Bard’s Song', 244, 2007, 5, 7),
  ('Feeling Good', 100, 2012, 6, 8);

INSERT INTO SpotifyClone.users (users_name, users_age, users_plan_date, plan_id)
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

INSERT INTO SpotifyClone.reproduction (reproduction_date, song_id, users_id)
VALUES
  ('2022-02-28 10:45:55', 8, 1),
  ('2020-05-02 05:30:35', 2, 1),
  ('2020-03-06 11:22:33', 10, 1),
  ('2022-08-05 08:05:17', 10, 2),
  ('2020-01-02 07:40:33', 7, 2),
  ('2020-11-13 16:55:13', 10, 3),
  ('2020-12-05 18:38:30', 2, 3),
  ('2021-08-15 17:10:10', 8, 4),
  ('2022-01-09 01:44:33', 8, 5),
  ('2020-08-06 15:23:43', 5, 5),
  ('2017-01-24 00:31:17', 7, 6),
  ('2017-10-12 12:35:20', 1, 6),
  ('2011-12-15 22:30:49', 4, 7),
  ('2012-03-17 14:56:41', 4, 8),
  ('2022-02-24 21:14:22', 9, 9),
  ('2015-12-13 08:30:22', 3, 10);

INSERT INTO SpotifyClone.following (artist_id, users_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (4, 4),
  (5, 5),
  (6, 5),
  (6, 6),
  (1, 6),
  (6, 7),
  (3, 9),
  (2, 10);

SELECT
user.users_name AS usuario,
COUNT(DISTINCT song.song_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(song.song_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.reproduction AS reproduction
ON user.users_id = reproduction.users_id
INNER JOIN SpotifyClone.song AS song
ON reproduction.song_id = song.song_id
GROUP BY user.users_name
ORDER BY user.users_name ASC;

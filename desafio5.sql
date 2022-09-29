SELECT
  song.song_name AS cancao,
  COUNT(reproduction.users_id) AS reproducoes
FROM SpotifyClone.song AS song
INNER JOIN SpotifyClone.reproduction AS reproduction
ON song.song_id = reproduction.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
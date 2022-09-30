SELECT
artist.artist_name AS artista,
album.album_name AS album,
COUNT(follow.users_id) AS seguidores
FROM SpotifyClone.artist as artist
INNER JOIN  SpotifyClone.album as album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.following as follow
ON album.artist_id = follow.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;

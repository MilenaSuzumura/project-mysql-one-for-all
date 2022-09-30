SELECT
artist.artist_name AS artista,
album.album_name AS album
FROM SpotifyClone.artist as artist
INNER JOIN  SpotifyClone.album as album
ON artist.artist_id = album.artist_id
GROUP BY artista, album
HAVING artista = "Elis Regina";
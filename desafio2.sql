SELECT
COUNT(DISTINCT song.song_id) AS cancoes,
COUNT(DISTINCT artist.artist_id) AS artistas,
COUNT(DISTINCT album.album_id) AS albuns
FROM SpotifyClone.song AS song
INNER JOIN SpotifyClone.album AS album
ON album.album_id = song.album_id
INNER JOIN SpotifyClone.artist AS artist
ON artist.artist_id = album.artist_id

SELECT
user.users_name AS usuario,
IF(YEAR(MAX(reproduction.reproduction_date)) >= 2021, "Usuário ativo", "Usuário inativo")
AS status_usuario
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.reproduction AS reproduction
ON user.users_id = reproduction.users_id
GROUP BY user.users_name
ORDER BY user.users_name ASC;

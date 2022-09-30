SELECT
MIN(plan.plan_value) AS faturamento_minimo,
MAX(plan.plan_value) AS faturamento_maximo,
ROUND(AVG(plan.plan_value), 2) AS faturamento_medio,
SUM(plan.plan_value) AS faturamento_total
FROM SpotifyClone.plan AS plan
INNER JOIN SpotifyClone.users AS user
ON plan.plan_id = user.plan_id;
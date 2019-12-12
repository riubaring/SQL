SELECT '2019' AS 'Year', COUNT(*) AS 'Total' FROM ocas.employees
WHERE (created_at >= '2019-01-01' and created_at < '2020-01-01')
union
SELECT '2018', COUNT(*) FROM ocas.employees
where (created_at >= '2018-01-01' and created_at < '2019-01-01')
union
SELECT '2017', COUNT(*) FROM ocas.employees
where (created_at >= '2017-01-01' and created_at < '2018-01-01')
union
SELECT '2017 to 2019', COUNT(*) FROM ocas.employees
where (created_at >= '2017-01-01' and created_at < '2020-01-01')
union
SELECT 'Older than 2017', COUNT(*) FROM ocas.employees
where created_at < '2017-01-01'
union
SELECT 'Grand Total', COUNT(*) FROM ocas.employees;
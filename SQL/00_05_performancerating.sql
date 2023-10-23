---------------------------- Verificação do range da JobSatisfaction
-- SELECT
--     MIN(PerformanceRating) AS avaliacao_performance_min,
--     AVG(PerformanceRating) AS avaliacao_performance_media,
--     MAX(PerformanceRating) AS avaliacao_performance_max
-- FROM
--     [PORTIFOLIO].[dbo].[employee]
-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]

SELECT
    DISTINCT PerformanceRating AS avaliacao_performance,
    COUNT(*) AS qtd_funcionarios
FROM
    [PORTIFOLIO].[dbo].[employee]
GROUP BY
    PerformanceRating
ORDER BY
    PerformanceRating

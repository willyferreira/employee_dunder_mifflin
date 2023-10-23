---------------------------- Verificação do range da JobSatisfaction
-- SELECT
--     MIN(JobSatisfaction) AS satisfacao_trabalho_min,
--     AVG(JobSatisfaction) AS satisfacao_trabalho_media,
--     MAX(JobSatisfaction) AS satisfacao_trabalho_max
-- FROM
--     [PORTIFOLIO].[dbo].[employee]
-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]

SELECT
    DISTINCT JobSatisfaction AS satisfacao_trabalho,
    COUNT(*) AS qtd_funcionarios
FROM
    [PORTIFOLIO].[dbo].[employee]
GROUP BY
    JobSatisfaction
ORDER BY
    JobSatisfaction

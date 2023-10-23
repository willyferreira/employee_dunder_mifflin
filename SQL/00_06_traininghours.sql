-- SELECT
--     MIN(TrainingHours) AS horas_treinamento_min,
--     AVG(TrainingHours) AS horas_treinamento_media,
--     MAX(TrainingHours) AS horas_treinamento_max
-- FROM
--     [PORTIFOLIO].[dbo].[employee]
-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]
-----------------------------------------------------------
-- SELECT
--     DISTINCT(TrainingHours)
-- FROM
--     [PORTIFOLIO].[dbo].[employee]

-- -- FROM [PORTIFOLIO].[dunder_mifflin].[employee]

-- ORDER BY TrainingHours


-----------------------------------------------------------
SELECT
    EmployeeID,
    TrainingHours,
    CASE
        WHEN TrainingHours < 8 THEN 'Menos de 8 horas'
        WHEN TrainingHours >= 8 AND TrainingHours <= 20 THEN 'Entre 8 e 20 horas'
        WHEN TrainingHours >= 21 AND TrainingHours <= 40 THEN 'Entre 21 e 40 horas'
        WHEN TrainingHours >= 41 AND TrainingHours <= 60 THEN 'Entre 41 e 60 horas'
        WHEN TrainingHours >= 61 AND TrainingHours <= 100 THEN 'Entre 61 e 100 horas'
        WHEN TrainingHours > 101 THEN 'Mais de 101 horas'
        ELSE 'Sem registro de treinamento'
    END AS horas_treinamento_faixa
FROM [PORTIFOLIO].[dbo].[employee]
-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]
ORDER BY EmployeeID
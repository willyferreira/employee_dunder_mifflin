SELECT
    MIN(WorkLifeBalance) AS balanco_vida_trabalho_min,
    ROUND(AVG(WorkLifeBalance), 2) AS balanco_vida_trabalho_media,
    MAX(WorkLifeBalance) AS balanco_vida_trabalho_max
FROM
    [PORTIFOLIO].[dbo].[employee]
-- FROM [PORTIFOLIO].[dunder_mifflin].[employee]
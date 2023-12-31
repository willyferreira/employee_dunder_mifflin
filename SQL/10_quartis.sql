SELECT
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Salary) OVER(PARTITION BY Department) AS Primeiro_Quartil,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY Salary) OVER(PARTITION BY Department) AS Mediana,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Salary) OVER(PARTITION BY Department) AS Terceiro_Quartil
FROM
    [PORTIFOLIO].[dunder_mifflin].[employee]




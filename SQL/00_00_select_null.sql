SELECT *
--FROM [PORTIFOLIO].[dbo].[employee]

FROM [PORTIFOLIO].[dunder_mifflin].[employee]
WHERE 1 = 1
    --AND EmployeeID IS NULL -- (Sem registros)
    -- AND Branch IS NULL -- (8 funcionários)
    -- AND Tenure IS NULL -- (9 funcionários)
    -- AND Salary IS NULL -- (9 funcionários)
    -- AND Department IS NULL -- (Sem registros)
    -- AND JobSatisfaction IS NULL -- (28 funcionários)
    -- AND WorkLifeBalance IS NULL -- (28 funcionários)
    -- AND CommuteDistance IS NULL -- (Sem registros)
    -- AND MaritalStatus IS NULL -- (Sem registros)
    -- AND Education IS NULL -- (Sem registros)
    -- AND PerformanceRating IS NULL -- (Sem registros)
    -- AND TrainingHours IS NULL -- (191 funcionários)
    -- AND OverTime IS NULL -- (100 funcionários)
    -- AND NumProjects IS NULL -- (99 funcionários)
    -- AND YearsSincePromotion IS NULL -- (1 funcionário)
    AND EnvironmentSatisfaction IS NULL -- (28 funcionários)
    -- AND ChurnLikelihood IS NULL -- (Sem registros)

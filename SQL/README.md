#### Tabela

1. **EmployeeID**: Identificador único para cada funcionário.
1. **Tenure**: Quantidade de anos que o funcionário está na empresa.
1. **Salary**: Salário anual do funcionário.
1. **Department**: A área em que o empregado trabalha (exemplo: Sales, Accounting, Customer Service).
1. **JobSatistaction**: A auto-declarada satisfação do funcionário no trabalho, em uma escala de 1 a 5, sendo 5 considerada "excelente".
1. **WorkLifeBalance**: A auto-declaração do funcionário sobre o equilíbrio entre sua vida pessoal e profissional, em uma escala de 1 a 5, sendo 5 considerado "excelente".
1. **CommuteDistance**: A distância percorrida pelo funcionário no trajeto casa-trabalho (exemplo: Short, Medium, Long).
1. **MaritalStatus**: Estado civil do funcionário (exemplo: Single, Married, Divorced)
1. **Education**: Grau de escolaaridade do funcionário (exemplo: High School, Bachelor's, Master's)
1. **PerformanceRating**: Avaliação do funcionário, em uma escala de 1 a 5, sendo 5 considerada "excelente".
1. **TrainingHours**: Quantidade de horas de treinamento que o funcionário recebeu.
1. **OverTime**: Se o funcionário fez horas extras ou não.
1. **NumProjects**: Quantidade de projetos os quais o funcionários está trabalhando atualmente.
1. **YearsSincePromotion**: Quantidade de anos desde a última promoção do funcionário.
1. **EnvironmentSatisfaction**: A auto-declarada satisfação do funcionário com o ambiente laboral, em uma escala de 1 a 5, sendo 5 "excelente".
1. **Branch**: Representa a localização geográfica de cada funcionário em cada uma das 12 filias da Dunder Mifflin nos Estados Unidos.

##### ChurnLikelihood (Variável-alvo)

Os funcionários foram classificados em classes com base na probabilidade de abandonar a empresa:

- **Class A**: Alta probabilidade de sair.
- **Class B**: Moderada probabilidade de sair.
- **Class C**: Pouca probabilidade de sair.

Essa classificação pode ajudar a entender quais fatores-chave podem contribuir para a rotatividade de funcionários e implementar estratégias de retenção e promoção da satisfação dos funcionários. 

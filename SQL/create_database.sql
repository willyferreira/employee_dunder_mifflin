USE [DUNDER_MIFFLIN]
GO

/****** Object:  Table [dbo].[employee]    Script Date: 09/10/2023 10:06:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employee](
	[EmployeeID] [smallint] NOT NULL,
	[Branch] [nvarchar](50) NULL,
	[Tenure] [float] NULL,
	[Salary] [float] NULL,
	[Department] [nvarchar](50) NULL,
	[JobSatisfaction] [float] NULL,
	[WorkLifeBalance] [float] NULL,
	[CommuteDistance] [nvarchar](50) NULL,
	[MaritalStatus] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[PerformanceRating] [float] NULL,
	[TrainingHours] [float] NULL,
	[OverTime] [nvarchar](50) NULL,
	[NumProjects] [float] NULL,
	[YearsSincePromotion] [float] NULL,
	[EnvironmentSatisfaction] [float] NULL,
	[ChurnLikelihood] [nvarchar](50) NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



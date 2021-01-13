USE [zensor]
GO
/****** Object:  Table [dbo].[EMPDATA]    Script Date: 12/7/2020 3:33:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPDATA](
	[EMPNO] [int] NOT NULL,
	[ENAME] [nvarchar](10) NULL,
	[JOB] [nvarchar](9) NULL,
	[MGR] [int] NOT NULL,
	[HIREDATE] [date] NULL,
	[SAL] [int] NOT NULL,
	[COMM] [int] NULL,
	[DEPTNO] [int] NULL,
	[Status] [nchar](1) NULL,
 CONSTRAINT [EMP_PK] PRIMARY KEY CLUSTERED 
(
	[EMPNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7521, N'WARD', N'SALESMAN', 7698, CAST(N'1981-02-22' AS Date), 4000, 3000, 30, N'Y')
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7566, N'cc', N'MANAGER', 7839, CAST(N'1981-04-02' AS Date), 2975, NULL, 20, N'Y')
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7839, N'KING', N'PRESIDENT', 7963, CAST(N'1981-11-17' AS Date), 4666, NULL, 10, N'N')
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7844, N'TURNER', N'SALESMAN', 7698, CAST(N'1981-09-08' AS Date), 1500, 0, 30, N'Y')
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7876, N'cc', N'CLERK', 7788, CAST(N'1983-01-12' AS Date), 1100, NULL, 20, N'N')
INSERT [dbo].[EMPDATA] ([EMPNO], [ENAME], [JOB], [MGR], [HIREDATE], [SAL], [COMM], [DEPTNO], [Status]) VALUES (7900, N'JAMES', N'CLERK', 7698, CAST(N'1981-12-03' AS Date), 950, NULL, 30, N'N')








GO
ALTER TABLE [dbo].[EMPDATA]  WITH CHECK ADD  CONSTRAINT [FK__EMPDATA__DEPTNO] FOREIGN KEY([DEPTNO])
REFERENCES [dbo].[DEPTDATA] ([DEPTID])
GO
ALTER TABLE [dbo].[EMPDATA] CHECK CONSTRAINT [FK__EMPDATA__DEPTNO]
GO
ALTER TABLE [dbo].[EMPDATA]  WITH CHECK ADD  CONSTRAINT [CK_Job] CHECK  (([job]='Analyst' OR [job]='SALESMAN' OR [job]='President' OR [job]='manager' OR [job]='clerk'))
GO
ALTER TABLE [dbo].[EMPDATA] CHECK CONSTRAINT [CK_Job]
GO
ALTER TABLE [dbo].[EMPDATA]  WITH CHECK ADD  CONSTRAINT [CK_SAL] CHECK  (([Sal]<(10000)))
GO
ALTER TABLE [dbo].[EMPDATA] CHECK CONSTRAINT [CK_SAL]
GO

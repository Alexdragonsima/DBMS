USE DBMS_DDL;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'??????????? ????????????????%'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2023));
PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidaysDuration(N'??????%'));

--PRINT('---------------------------');
--PRINT(dbo.GetHolidayStartDate(N'??????%', 2025));
--PRINT(dbo.GetEasterDate(2004));
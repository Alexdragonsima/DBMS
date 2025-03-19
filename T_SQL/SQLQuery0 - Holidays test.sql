USE DBMS_DDL;
SET DATEFIRST 1;
GO

--SELECT * FROM DaysOFF;

--EXEC sp_AddHolidays 2025, N'8%';

SELECT
		[Дата]		=	[date],
		[Праздник]	=	holiday_name
FROM	DaysOFF, Holidays
WHERE	holiday=holiday_id
ORDER BY [date]
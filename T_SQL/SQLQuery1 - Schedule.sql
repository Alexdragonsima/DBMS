USE DBMS_DDL;
GO

DECLARE @group				AS INT		= (SELECT group_id			FROM Groups		 WHERE group_name = N'PV_319');
DECLARE @discipline			AS SMALLINT	= (SELECT discipline_id		FROM Disciplines WHERE discipline_name LIKE N'Обьектно-ориентированное програмирование%');
DECLARE @teacher			AS SMALLINT = (SELECT teacher_id		FROM Teachers	 WHERE last_name = N'Олег');
DECLARE @start_date			AS DATE		= N'2024-06-01';
DECLARE @number_of_lessons  AS TINYINT	= (SELECT number_of_lessons FROM Disciplines WHERE discipline_id = @discipline);
DECLARE @lesson				AS TINYINT  = 1;
DECLARE @time				AS TIME		= N'18:30';

WHILE (@lesson <= @number_of_lessons)
BEGIN
		PRINT(@date);
		PRINT(@lesson);
		PRINT(@time);
		SET @lesson = @lesson+1;
		PRINT(@lesson);
		PRINT(DATEADD(MINUTE, 95, @time));
		PRINT('--------------------------------')
END

--INSERT Schedule
--			([group],discipline,teacher,[date],[time],spent)
--VALUES
--			(319,	1,	1,	N'2023-11-23', N'18:30',	1);

SELECT * FROM Schedule;
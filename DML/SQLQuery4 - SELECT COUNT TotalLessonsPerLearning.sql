USE DBMS_DDL;
GO

SELECT 
			discipline_name			AS [Дисциплина],
			number_of_lessons		AS [Количество занятий]
FROM		Directions,Disciplines,DisciplinesDirectionRelation
WHERE		direction=direction_id
AND			discipline=discipline_id
AND			direction_name LIKE N'C++'
;
GO

--SELECT *FROM Disciplines;

SELECT 
			[Направление обучения] = direction_name,
			[Количество занятий]   = SUM(number_of_lessons)
FROM		Disciplines,Directions,DisciplinesDirectionRelation
WHERE		direction	=	direction_id
AND			discipline  =   discipline_id
GROUP BY	direction_name;
--SELECT		
--			[Направление обучения] = direction_name,
--			[Количество дисциплин] = COUNT(discipline)

--FROM		Disciplines,Directions,DisciplinesDirectionRelation
--WHERE		discipline=discipline_id
--AND			direction=direction_id
--GROUP BY	direction_name
--;
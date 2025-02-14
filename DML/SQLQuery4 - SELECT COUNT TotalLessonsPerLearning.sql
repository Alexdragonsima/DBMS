USE DBMS_DDL;
GO

SELECT 
			discipline_name			AS [����������],
			number_of_lessons		AS [���������� �������]
FROM		Directions,Disciplines,DisciplinesDirectionRelation
WHERE		direction=direction_id
AND			discipline=discipline_id
AND			direction_name LIKE N'C++'
;
GO

--SELECT *FROM Disciplines;

SELECT 
			[����������� ��������] = direction_name,
			[���������� �������]   = SUM(number_of_lessons)
FROM		Disciplines,Directions,DisciplinesDirectionRelation
WHERE		direction	=	direction_id
AND			discipline  =   discipline_id
GROUP BY	direction_name;
--SELECT		
--			[����������� ��������] = direction_name,
--			[���������� ���������] = COUNT(discipline)

--FROM		Disciplines,Directions,DisciplinesDirectionRelation
--WHERE		discipline=discipline_id
--AND			direction=direction_id
--GROUP BY	direction_name
--;
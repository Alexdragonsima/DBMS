USE DBMS_DDL;
GO

SELECT
			[����������� ��������]		=	direction_name,
			[���������� ���������]		=	COUNT(discipline_name)
FROM		Disciplines, Directions, DisciplinesDirectionRelation
WHERE		discipline	=	discipline_id
AND			direction	=	direction_id
GROUP BY	direction_name
;
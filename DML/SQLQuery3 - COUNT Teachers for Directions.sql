USE DBMS_DDL;
GO

SELECT
		[����������� ��������]		=	direction_name,
		[���������� ��������������]	=	
		(SELECT SUM (teachers.number_of_teachers)
		FROM (SELECT discipline_id, COUNT (teacher_id) AS number_of_teachers
			FROM Teachers,Disciplines,TeachersDisciplinesRelation
			WHERE	teacher		=	teacher_id
			AND		discipline	=	discipline_id
			GROUP BY	discipline_id
			)teachers, DisciplinesDirectionRelation
			WHERE	discipline=discipline_id AND direction=direction_id
		)

FROM	Directions, Disciplines, DisciplinesDirectionRelation
WHERE	direction	=	direction_id
AND		discipline	=	discipline_id
--GROUP BY direction_name 
;

SELECT discipline_name, COUNT (teacher_id) AS number_of_teachers
			FROM Teachers,Disciplines,TeachersDisciplinesRelation
			WHERE	teacher		=	teacher_id
			AND		discipline	=	discipline_id
			GROUP BY	discipline_name;
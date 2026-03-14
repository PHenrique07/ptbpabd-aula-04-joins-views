--1)
SELECT * FROM student s
JOIN takes t ON s.ID = t.ID;

--2)
SELECT 
    s.ID, 
    s.name, 
    COUNT(t.course_id) AS "Quantidade de cursos"
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY "Quantidade de cursos" DESC;


--3)

CREATE VIEW civil_eng_students AS
SELECT 
    s.ID, 
    s.name, 
    COUNT(t.course_id) AS "Quantidade de cursos"
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name;


SELECT * FROM civil_eng_students
ORDER BY "Quantidade de cursos" DESC;


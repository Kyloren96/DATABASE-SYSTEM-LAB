use lab;

#1
SELECT name FROM instructor
WHERE dept_name = 'Biology';

#2
SELECT title
FROM course
Where credits = '3' and dept_name = 'Comp. Sci.';

#3
SELECT course_id,title 
FROM takes NATURAL JOIN course
WHERE ID = '12345';

#4
SELECT ID,SUM(credits)
FROM takes NATURAL JOIN student NATURAL JOIN course
WHERE ID = '12345'
GROUP BY ID;

#5
SELECT ID,SUM(credits)
FROM takes NATURAL JOIN student NATURAL JOIN course
GROUP BY ID;

#6
SELECT DISTINCT NAME
FROM takes NATURAL JOIN student
WHERE course_id IN(
	SELECT course_id FROM course
	WHERE dept_name = 'Comp. Sci.');

#7
SELECT ID FROM instructor
WHERE ID NOT IN(
SELECT ID FROM teaches);

#8
SELECT ID,name FROM instructor
WHERe ID NOT IN(
	SELECT ID FROM teaches);
 
 #9
CREATE TABLE ACTOR(id int, actname varchar(30),PRIMARY KEY (id));
CREATE TABLE MOVIE(id int, movname varchar(50), PRIMARY KEY (id));
CREATE TABLE CASTS(pid int, mid int, role varchar(50), FOREIGN KEY(pid) REFERENCES ACTOR(id), FOREIGN KEY(mid) REFERENCES MOVIE(id));


#advanced 
#1

#2

select * from course where course_id like 'CS-1%';

create view F as
select * from takes
where grade = 'F';


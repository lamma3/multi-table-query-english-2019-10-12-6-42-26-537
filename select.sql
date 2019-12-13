# 1.Query the existence of 1 course
select * from course  where id  = 1;
# 2.Query the presence of both 1 and 2 courses
select * from course  where id  = 1 or id = 2; 
# 3.Query the student number and student name and average score of students whose average score is 60 or higher.
select s.id, s.name, avg(sc.score) avg_score from student s join student_course sc on s.id = sc.studentId where avg_score >= 60 group by s.id;
# 4.Query the SQL statement of student information that does not have grades in the student_course table
select distinct s.* from student s left join student_course sc on s.id = sc.studentId where sc.score is null;
# 5.Query all SQL with grades
select * from student_course;
# 6.Inquire about the information of classmates who have numbered 1 and also studied the course numbered 2
select distinct s.* from student s join student_course sc on s.id = sc.studentId where sc.studentId = 1 and sc.courseId = 2;
# 7.Retrieve 1 student score with less than 60 scores in descending order
select score from student_course where score < 60 order by score desc;
# 8.Query the average grade of each course. The results are ranked in descending order of average grade. When the average grades are the same, they are sorted in ascending order by course number.
select courseId, avg(score) avg_score from student_course group by courseId order by avg_score desc, courseId asc;
# 9.Query the name and score of a student whose course name is "Math" and whose score is less than 60
select s.name, sc.score from student s join student_course sc on s.id = sc.studentId join course c on c.id = sc.courseId where c.name = 'Math' and sc.score < 60;

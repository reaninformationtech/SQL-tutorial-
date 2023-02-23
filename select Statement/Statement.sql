
select* from tblStudents 
select * from tblClass

--- select distinct 

select distinct gender from tblStudents 

--- select Operators   

select * from tblStudents  where AGE>22

select * from tblStudents where AGE between  22 and 24
select * from tblStudents where DOB between  '2000-01-01' and '2001-01-01'


--- order by 

select * from tblStudents order by AGE 

--- select COUNT ,  SUM

select a.id,
	   a.name,
	   a.gender,
	   b.score,
	   c.class
into #tmp1
from tblStudents as a 
inner join tblRoom as b on a.id=b.student_id
inner join tblClass as c on c.id=b.class_id

select * from #tmp1


select count( distinct id) from #tmp1
select sum(score) as score,class from #tmp1 group by class


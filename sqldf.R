library("sqldf")  # loading R package
#sqldf is an R package for running SQL statements on R data frames

#or 
#how to install packages - 
install.packages('sqldf')

stu<-read.csv(file.choose())  #file. choose() function in R to bring up a file explorer window 
#that allows you to interactively choose a file path to work with.

stu
View(sqldf("select * from stu")) #sqldf()- Structured Query Language (SQL) function on DataFrames (DF)

# Display count of all rows from student table
sqldf("select count (*) from stu") 

#display all records from stu table where marks are greater than 80
sqldf("select * from stu where marks>80")

#display all records from stu table where marks are less  than 80
sqldf("select *from stu where marks<80")

#display all records from stu table where name is veer
sqldf("select * from stu where name='Veer'")

#display all records from stu table where marks are 45
sqldf("select * from stu where marks==45")

#display name of students from stu table where marks is 45 
sqldf("select name from stu where marks==45")

#display different names of student from stu table 
sqldf("select distinct name from stu")

#display first two rows from table
sqldf("select * from stu limit 2")

#display all records from stu table and order name in desc order 
sqldf("select * from stu order by name desc")

#display all records from stu table where name is ending with s
sqldf("select * from stu where name like '%s'")

#display all records from stu table where name is starting with v
sqldf("select * from stu where name like 'V%'")

#display all records from stu table where name has letter k
sqldf("select * from stu where name like '%k%'")

#display name and marks from student table and rename name as N and marks as M
sqldf("select name as N, marks as M from stu")

#display sum of all marks from stu table 
sqldf("select sum(marks)from stu")

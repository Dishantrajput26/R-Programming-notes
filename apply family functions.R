#Apply Family of Functions
#Functions present in the apply family are the ones that allow us to manipulate 
#data frames, arrays, matrices, vectors. These functions are alternative to the loops.
#However, are more efficient than loops as functions are faster at the execution level. 
#These functions reduce the need for explicitly creating a loop in R

#Different type of apply function-
#1 The apply() function, #2 The lapply() function
##3 The sapply() function , #4 The tapply() function, #5 The mapply() function

#1 Apply()
#Syntax-apply(x,margin, function)
#x: determines the input array including matrix.
#margin: If the margin is 1 function is applied across row, 
#if the margin is 2 it is applied across the column.
#function: determines the function that is to be applied on input data.

mat<-matrix(c(1,2,3,4),nrow=2,ncol=3)
mat
apply(mat,1,sum)
apply(mat,2,sum)
apply(mat,2,mean)

#************************************************************
#2 lapply() function:It takes list as an argument and
#apply function to each element of the list by looping

#Syntax: lapply( x, fun )
#x: determines the input vector or an object.
#fun: determines the function that is to be applied to input data.

# create sample data 
names <- c("priyank", "abhiraj","pawananjani", 
           "sudhanshu","devraj") 
names 
# apply lapply() function 
print("data after lapply():") 
lapply(names, toupper) 


#****************************************************************
a<-list(A=c(8,9,7,5),
        B=data.frame(x=1:5,y=c(5,1,0,2,3)))
a
lapply(a,sum)

#****************************************************************
a=1:3
fun<-function(x){
  x^2
}
lapply(a,fun)

#****************************************************************
#3 sapply() function: It is the same as lapply() with the only difference being the type of return object.
#if the result is a list with each element of length 1 then vector will be returned
#if the result is a list with more than 1 element, (but of same length vector),matrix will be returned
#if none of the above algorithm is applicable , list will be returned

#Syntax: sapply( x, fun )
#x: determines the input vector or an object.
#fun: determines the function that is to be applied to input data

sapply(1:4,sqrt)

#************************************************
out<-numeric(10)
for(i in 1:10){
  out[i]<-i^2
}
out

#**************************************************
x<-list(A=1:5,B=6:20,c=1)
sapply(x,length)

#**********************************************
x<-list(A=1:5,B=6:10,c=11:15)
sapply(x,length)

#***************************************************
#4 tapply() function:It helps us to create a subset of a vector and
#then apply some functions to each of the subsets. 
#In such cases where we want to break the data into different groups and 
#apply specific functions in each of the subgroup
#Syntax: tapply( x, index,  fun )
#x: determines the input vector or an object.
#index: determines the factor vector that helps us distinguish the data.
#fun: determines the function that is to be applied to input data.

res<-data.frame(id=c(1,2,3,4),name=c("john","alex","aryan","ani"),
           marks=c(10,20,30,40),section=c('A','B','A','B'))
res
res$section
marks<-res$marks
marks
mean1<-factor((res$section),labels=c('Section A','Section B'))
mean1
tapply(marks,mean1,mean)

#******************************************************************
#mapply-it applies the function parallel to the given set of arguments
#It applies the same function to each argument passed 
mapply(rep, 1:4, 4:1)
mapply(rep, times = 1:4, x = 4:1)
mapply(rep, times = 1:4, MoreArgs = list(x = 42))

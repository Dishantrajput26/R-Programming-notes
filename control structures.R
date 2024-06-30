

#1.if statement
x<-30L
if(is.integer(x)){
  print("x is integer")
}
#**********************************************************************
#2 check whether the number is greater than 0
x<-as.integer(readline(prompt="enter the number"))
if(x>0){
  print("number is positive")
}else{
print("outside the loop")
}

#************************************************************
#3 check whether the value is existing in the list or not
vect1<-c(10,20,30)
if(40%in%vect1){
  print("yes value is existing")
  
}else{
  "try other number"
}
#********************************************************************
#4 check whether the number is even or odd
x<-as.integer(readline(prompt="enter the number"))
if(x%%2==0){
  print("number is even")
}else{
  print("number is odd")}

#********************************************************
#5 Check value is less than or greater than 10 
x <- 5
if(x > 10){ 
  print(paste(x, "is greater than 10")) 
}else{ 
  print(paste(x, "is less than 10"))
}
#********************************************************************
#6 ifelseif 
a=as.numeric(readline('ENter number '))
if (a==0){
  print(paste('A is ZERO'))
}else if(a>0){
  print(paste('A is a positive number'))
}else{
  print(paste('A is a negative number'))}


#********************************************************************
#7 check even odd incase of vector using ifelse()
vect<-c(2,3,10,15,23,14,17,20)
ifelse(vect%%2==0,"even","odd")

# divisible by 3
vect<-c(2,3,10,15,23,14,17,20, 18, 3)
ifelse(vect%%3==0,"Divisible by 3","Not DIvisible by 3")
#*************************************************************
#8check whether the number is positive , negative or zero by using nested if
a=as.numeric(readline('ENter a number'))
if (a==0){
  print(paste('A is ZERO'))
}else{
  if(a>0){
    print(paste('A is a positive number'))
  }
  else
  {
    print(paste('A is a negative number'))
  }}
#*******************************************************
#* 
#*
x<-as.integer(readline('Enter a number '))
if(x>0){
  if(x%%2==0){
    print("x is positive even")
  }
  else{
    print("x is positive odd")
  }
}else{
  if(x%%2==0){
    print("x is negative even")
  }
  else{
    print("x is negative odd")
  }
}

#***************************************
if (TRUE) "this will not be printed" else "this will be printed"

#***********************************************
x<-as.numeric(readline('Enter a number'))
if (is(x, "numeric")) x/2 else print("x is not numeric")

#***********************************************
a <- c("a","a","a","a","a")
b <- c("b","b","b","b","b")
a <- a
b <- b
ifelse(c(TRUE,FALSE,TRUE,FALSE,TRUE),a,b)


#functions
#syntax-function(arguments) body
#where arguments is a set of symbol names (and, optionally, default values) that will
#be defined within the body of the function, and body is an R expression. Typically,
#the body is enclosed in curly braces, but it does not have to be if the body is a single
#expression. 
#1 Printing the power of 2, of all numbers from 1 to 5
name <- function() {
  for(i in 1:5){
    print(i^2)
  }
}
name()
#****************************
#2. find exponential of a number
#call the function by using arguments
expo<-function(a,b){
  paste(a^b)
}
expo(2,4)
#***************************
#3. addition of two numbers using functions

add<-function(a,b){
  paste("addition of two numbers is:",a+b)
}
a<-as.integer(readline())
b<-as.integer(readline())
add(a,b)
#****************************************
#4.multiplication(call the function by name of the arguments)
multi<-function(a,b,c){
  paste("multiplication of numbers is:",a*b*c)
}
multi(a=3,b=5,c=10)

#5 passing default arguments, subtract 2 numbers using function

sub<-function(a=20,b){
  paste("subtraction of numbers is:",a-b)
}
sub(4,5)

#6 lazy evaluation of the function  - 
#print a, expo of a by 2, b by passing one argument while calling 
fun1<-function(a,b){
  print(a)
  print(a^2)
  print(b)
}
fun1(6) # error
fun1(4,2)

#7 mixing of named and unnamed arguments
fun1<-function(a,b){
  print(a/b)
}
fun1(b=10,20) 


# previous is 20 /10
fun1(a=10,20) # 10/20
#******************************
#8 WAP to multiply variable by variable using function without braces 

calsqr=function(y)
  y*y
calsqr(5)
#**************************************************
#9 area of circle

areacir=function(pi=3.14,r){
  ar=pi*r*r
  paste("area of circle=",ar)}
areacir(r=5)

#****************************************************
#10 table of a number
printTableOf2 <- function() {
  for (i in 1:10) {
    result <- 1:10* i
    cat(i,result, "\n")
  }
}
printTableOf2()
#***************************************************
#Anonymous functions
#Functions created without any names are known as anonymous functions.
#These functions are used for writing one line codes. 
#syntax-Function(argument list)Expression
#10
(function(pi=3.14,r)pi*r*r)(r=5)
#****************************************************
#11
r=5
calarea=function(pi=3.14,r=10)
{  a=pi*r*r  
rm(r) 
b=pi*r*r 
print("area of circle before removing r")  
print(a)  
print("area of circle after removing r") 
print(b)}
calarea()
#*****************************************************************************
#12 use return function to calculate x ^y 
power<-function(a,b){
  return(a^b)
}
power(2,4)
#*****************************************************************************
#13Nested functions
add<-function(a,b){
  return(a+b)
}
print(add(add(1,2),add(3,4)))
#******************************************************************************
#14  ##?????????
power<-function(a){
  exponential<-function(b){
  return(a^b)
}
return(exponential)
}
result<-power(5)
print(result(4))
#*****************************************************************
#15 Square Pattern
printSquarePattern <- function(n) {
  for (i in 1:n) {
    for (j in 1:n) {
      cat("* ")
    }
    cat("\n")
  }
}

printSquarePattern(5)
#****************************************************************************


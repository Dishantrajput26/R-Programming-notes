#Lists
#A list is a generic object consisting of an ordered 
#collection of objects. Lists are heterogeneous data 
#structures. These are also one-dimensional data structures. 
#A list can be a list of vectors, list of matrices,
#a list of characters and a list of functions and so on.
a<-c(1,2,3,4)#numeric
b<-c("hello","hi")#character
c<-15L#integer
d<-3+5i#complex
e<-list(a,b,c,d)#list creation
e
e[[2]]#accessing 2nd sublist
e[[2]][2]#accessing 2nd element of 2nd sublist
e[[2]][2]<-"LPU" #modifying list element
e[[2]]
e[[1]]<-NULL #deleting 1st sublist, it will change the order
#of sublists
e
#combining two lists
a<-list(7,8,3.5,"hello")
b<-list("hi","x",3L,3.5)
d<-c(a,b)
d

sno=c(1:5)
name=c("veer","jai","ajay","rahul","rohit")
CGPA=c(6:10)

#naming of a list
list1=list("Rollno"=sno,"Student Name"=name,"CGPA"=CGPA)
list1
list1[[3]]
class(list1[[3]])
class(list1)
typeof(list1)

#naming of a list-2nd method
list4<-list(c("aashi","kimmy","gargi"),c(100,200,300),list("R","Java","Python"))
list4
names(list4)<-c("names","marks","subject")
list4
#accessing list items
list4["marks"]

# naming a list 3rd method
l <- list(a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8,i=9,j=10)
l
l$j  

#adding new item in the list
list1
list1[["Gender"]]<-c("F","M","M","M","M")
list1
list1[["Gender"]]=NULL
list1
list1[3]=NULL
list1
#accessing list items
list1$`Student Name`
list1
list1[2]
list1[[2]]
list1[[2]][2]
l1=list1[[2]][-5]
l1
l1=list1[[2]][6]
l1

p<-as.integer(readline(prompt="enter integer value:"))
q<-as.complex(readline(prompt="enter complex value:"))
r<-as.character(readline(prompt="enter character value:"))
s<-as.logical(readline(prompt="enter logical value:"))
b<-list("Rollno"=p,"marks"=q,"value"=r,"pass"=s)
b
class(b)
neweelment=readline(prompt="enter string value:")
b["addition"]=neweelment
b
#unlist function converts the list into vectors
#unlisting the elements to perform arithmetic operations
list1<-list(5:10)
list2<-list(12:20)
list1;list2
v1<-unlist(list1)
v1
v2<-unlist(list2)
v2
example.list <- list(a=1, b=2,c=3)
example.list
example.list(a+b+c)#error
a+b+c #error

#with function- 
#The function 'with' evaluates the expression and then returns the result

with(example.list, a+b+c)  

#withinfunction makes changes in the object data and then returns data.
within(example.list, e<-a+b+c) 

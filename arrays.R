#arrays
vector1=c(5,5,3)
vector2=c(1,2,10,20,3,4)
array1<-array(c(vector1,vector2))#1D array
array1
class(array1)


array1<-array(c(vector1,vector2),dim=c(4,2))#4 rows 2 columns,extra values will be removed
array1

#change dim to (4,3)

vector1=c(7,8,3)
vector2=c(20,30,1,5,6,7,2,4)
array1<-array(c(vector1,vector2),dim=c(4,3))
array1
#if values are less than that of given dimensions, 
#values will be repeating from starting index of first vector


#2-D Array
a <- array(data=1:24,dim=c(3,4,2))#3rows,4 columns,2 dimensional
a


#assigning names to rows and columns
vector1
vector2
names1<-c("marks1","marks2","marks3")
names2<-c("value1","value2","value3","value4")
array1<-array(c(vector1,vector2),dim=c(4,3),dimnames = list(names2,names1))
array1
length(array1)

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim=c(3,3,4))
v3
col.name<-c("c1","c2","c3")
row.name<-c("r1","r2","r3")
mat.name<-c("mat1","mat2")
v1
v2
v3<-array(c(v1,v2),dim=c(3,3,2),
          dimnames = list(row.name,col.name,mat.name))
v3

#access the rows and column through names
v3[,"c2",]
v3["r3",,]

#dataframes:are a useful way to represent tabular data. I
#it is a list of named vectors of the same length. It resembles 
#a spreadsheet or a table in a database with columns and heading 
#for each column. In other words, a data frame can be defined as a 
#matrix in which data is stored in columns having names.
#Data frames are generally used to represent time series.
#While the first column can be character,the second and third can be
#numeric or logical.However, each column should have the same type of data.

data_frame=data.frame(Training = c("Strength", "Stamina", "Other"),
                      Pulse = c(100, 150, 120),
                      Duration = c(60, 30, 45))
data_frame  

str(data_frame)
names(data_frame)

#ACCESSING COLUMNS OF DATA FRAMES
data_frame[1]
data_frame[,-2]
data_frame[["Training"]]
data_frame$"Training"

## Add a new row
new_row<- rbind(data_frame,c("weight", 110, 120))
new_row

# Add a new column
New_col<- cbind(data_frame, Steps = c(1000, 6000, 2000))
New_col


subset(data_frame,Pulse>100)#where values of Pulse are greater than 100
data_frame[data_frame$Pulse>100,]#where values of Pulse are greater than 100

#Creating subsets of Particular Rows and Columns
subset(data_frame,Pulse>100,select=-Pulse)  #pulse not selected
#OR

subset(data_frame,Pulse>100,select=c(Training,Duration))
#Or

data_frame[data_frame$Pulse>100,c("Training","Duration")]

subset(data_frame,Pulse>100,select=Training:Duration)
#combine vertically using row bind

#*_________________******
library(help="datasets")
str(trees)
head(trees,n=3)
head(trees,n=10)
head(trees)  #first 6 values from top
tail(trees)  # last 6 values from bottom
tail(trees,n=3)

trees[10:20,]
trees[,1:2]
trees[,-2]
dim(trees)
trees[1,3]
trees[3,2]

trees[trees$Height>82,]


# dataframe - cars
str(cars)
names(cars)
head(cars)
tail(cars)

top.cities <- data.frame(
  city = c("Seattle","Washington","Chicago",
              "New York","Portland","St Louis",
             "Denver","Boston","Minneapolis","Austin",
             "Philadelphia","San Francisco","Atlanta",
             "Los Angeles","Richardson"),
  rank = c(100, 96, 94, 93, 93, 92, 90, 90, 89, 87, 85, 84, 82, 80, 80) )
top.cities
str(top.cities)
typeof(top.cities)  # type of data used as arguments
class(top.cities)

#This means that the same methods can be used to refer to items in lists and data
#frames.

top.cities$rank
head(top.cities)
tail(top.cities)


#combine two data frames vertically using rbind()
#column name of two dataframe must be same

#create 2 dataframes 
data_1=data.frame(
  name=c("Karandeep","karan"),
  age=c(20,25))
data_1


data_2<-data.frame(name=c("name1","name2"),
       age=c(26,27))
data_2


updated=rbind(data_1,data_2)
updated


##combine two data frames horizontally using cbind()
data_1=data.frame(
  name=c("Karandeep","karan"),
  age=c(20,25))
data_1

data_2<-data.frame(marks=c(100,200),subject=c("R","Java"))
data_2
cbind(data_1,data_2)


#length of dataframe-this is used to give number of columns in the dataframes

data_frame1<-data.frame(name=c("Karandeep","ankita"),subject=c("R","Java"),marks=c(100,200))
data_frame1
length(data_frame1)

#to generate a sample of a specific size from a vector 
#or a dataset, either with or without replacement.
#The basic syntax of sample() function is as follows:

#sample(data, size, replace = FALSE, prob = NULL)

#data can be a vector or a dataframe
#size represents the size of the sample
#replace is used to set the values again repeated 
#if it is set to true
#prob: a vector of probability weights for obtaining 

#the elements of the vector being sampled
vect<-c(100,200,300,400,600,1000,900)

## get 5 random elements
sample(vect,5)
# get 1 random elements
sample(vect,1)

##To return 5 random rows from iris dataset
index<-sample(1:nrow(iris), 5)
index
iris[index,]



library("dplyr")

# Create a data frame with missing data 
d <- data.frame( name = c("Abhi", "Bhavesh", "Chaman", "Dimri"), 
                 age = c(7, 5, 9, 16), 
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )
d

# Arranging name according to the age
d.name<- arrange(d, age)
print(d.name)

# Create a data frame with missing data
d <- data.frame(name=c("Abhi", "Bhavesh",
                       "Chaman", "Dimri"),
                age=c(7, 5, 9, 16),
                ht=c(46, NA, NA, 69),
                school=c("yes", "yes", "no", "no"))
d

# startswith() function to print only ht data
select(d, starts_with("ht"))

# -startswith() function to print
# everything except ht data
select(d, -starts_with("ht"))

# Printing column 1 to 2
select(d, 1: 2)

# Printing data of column
# heading containing 'a'
select(d, contains("a"))

# Printing data of column
# heading which matches 'na'
select(d, matches("na"))

# Create a data frame with missing data 
d <- data.frame( name = c("Abhi", "Bhavesh", 
                          "Chaman", "Dimri"), 
                 age = c(7, 5, 9, 16), 
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )
d
#mutate() and transmute():
#Addition of new variables which are the functions of 
#prevailing variables.

# Calculating a variable x3 which is sum of height
# and age printing with ht and age
mutate(d, x3 = ht + age) 

# Calculating a variable x3 which is sum of height 
# and age printing without any printing any column 
transmute(d, x3 = ht + age) 

#summarise():
#Condensing various values to one value.
# Calculating mean of age
summarise(d, mean = mean(age))

# Calculating min of age
summarise(d, min_age = min(age))

# Calculating max of age
summarise(d, max_age = max(age))

# Calculating median of age
summarise(d, med_age = median(age))

#sample_n() and sample_frac():
#For taking random specimens.
# Printing three rows
d
sample_n(d, 3)

# Printing 50 % of the rows - any rows 
sample_frac(d, .50)

#with() function enables us to evaluate an R expression within the function to be passed 
#as an argument. It works on data frames only. 
#That is why the outcome of the evaluation 
#of the R expression is done with respect to the 
#data frame passed to it as an argument.
#with() function does not alter the original data frame at any cost. 
#It gives the output separately for every value associated with the columns of the data frame.
#Syntax:

#with(data-frame, R expression)
d <- data.frame( name = c("Abhi", "Bhavesh", 
                          "Chaman", "Dimri"), 
                 age = c(7, 5, 9, 16), 
                 ht = c(46, NA, NA, 69),
                 school = c("yes", "yes", "no", "no") )
d
with(d,age*ht)

#within() function calculates the outcome of the expression within itself but with a 
#slight difference. It allows us to create a copy of the data frame and add a column that
#would eventually store the result of the R expression.
#Syntax:
#within(data frame, new-column <- R expression)
within(d,x<-age*ht)

# handling missing data
#is.na() Function for Finding Missing values: 
#A logical vector is returned by this function that indicates all the 
#NA values present. It returns a Boolean value. 
#If NA is present in a vector it returns TRUE else FALSE.
is.na(d)

#A NaN value is counted in NA but the reverse is not valid.
#default method not implemented for type 'list'
x<- c(NA, 3, 4, NA, NA, NA)
is.na(x)
#is.nan() Function for Finding Missing values: 
x<- c(NA, 3, 4, NA, NA, 0 / 0, 0 / 0)
is.nan(x)
is.na(x)
#Removing NA or NaN values
x <- c(1, 2, NA, 3, NA, 4,0/0)
d <- is.na(x)
d
x[!d] #missing values removed (method 1)

x <- c(1, 2, 0 / 0, 3, NA, 4, 0 / 0)
x
is.na(x)
x[! is.na(x)] #(method 2)

library("dplyr")
# Creating a data frame
df <- data.frame (c1 = 1:8,
                  c2 = factor (c("B", "A", "B", "C",
                                 "A", "C", "B", "A")))
df


# Filling some NA in data frame
df[4, 1] <- df[6, 2] <- NA
df


sum(is.na(df))

na.omit(df)


df[4, 1] <- df[6, 2] <- NA
df
# Printing all the levels(NA is excluded)
levels(df$c2)

# excludes every row containing even one NA
na.exclude(df)

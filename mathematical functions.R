#mathematical functions
x<--4
abs(x)
x<-0.4
abs(x)
sqrt(-4)
sqrt(4)
y<-4.2
ceiling(y)
floor(y)
#***********************************************************
trunc(5.19)
trunc(5.5)
#***********************************************************
round(0.5)
round(0.6)
round(3.5)
round(0.5)
round(1.5)
round(2.5)
round(3.5)
round(3.568,digit=1)
round(3.4567,digit=2)
round(3.44,digit=1)
#***********************************************************
x<-4
log(x)
log10(x)
exp(x)
#****************************************************************************
#substr: Extract or replaces substrings in a string
substr("abcdef",2,4)
#********************************************************************
#nchar-no. of character in a string (including spaces)
x<-"big data"
nchar(x)
#*******************************************************************
#grep()-(global regular expression print)
#function in R Language is used to search for matches of a pattern within each element of the given string.

#Syntax:grep(pattern, x, ignore.case=TRUE/FALSE, value=TRUE/FALSE)

#Parameters:pattern:Specified pattern which is going to be matched with given elements of 
#the string.
#x:Specified string vector.
#ignore.case:If its value is TRUE, it ignores case (upper or lower case)
#value:If its value is TRUE, it return the matching elements vector,else return the indices vector.

x <- c("GFG", "gfg", "xyz", "XYZ")
grep("gfg",x)
grep("xyz",x)
grep("gfg",x,ignore.case = FALSE)
grep("gfg",x,ignore.case = TRUE)

grep("b+", c("ab+", "bda2", "+ccaa", "ad"),value=TRUE) #return- the matching elements vector

grep("b+", c("ab+", "bda2", "+ccaa", "ad"),value=F) # returns the indices vector

#*******************************************************************
#sub() Function-Replace the First Match of a Pattern from a String 
#Syntax: sub(pattern, replacement, string, ignore.case=TRUE/FALSE)

#Parameters:
#pattern: string to be matched
#replacement: string for replacement
#string: String or String vector
#ignore.case: Boolean value for case-sensitive replacement

x="Hello world hello"
sub("ell","how",x)
sub("ELL","how",x,ignore.case=TRUE)
sub("ELL","how",x,ignore.case=FALSE)


#*****************************************
#strsplit()
#Syntax: strsplit(string, split, fixed)
#Parameters:
#string: Input vector or string.
#split: It is a character of string being split.
#fixed: Match the split or use the regular expression.

strsplit("xyz","")
strsplit("xyz",'')
strsplit("xyz",'-')
strsplit("hello world","")
x<-"hello world"
strsplit(x," ")

#strsplit() function with Regular Expression delimiter
x<-"hello2world9"
new_x<-strsplit(x,split = "[0-9]")
print(new_x)

#Splitting the dates using strsplit() function in R
string_date<-c("2-07-2020","5-07-2020","6-07-2020",
               "7-07-2020","8-07-2020")
result<-strsplit(string_date,split = "-")
print(result)
#**************************************************************************
st1<- "shuBHAm"
print(tolower(st1))
st1<- "shuBHAm"
print(toupper(st1))


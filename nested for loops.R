#nested for loops
#1 Take two seq - 1, 2,3 if adding a number from both seq is divisible by 2, 
#print those numbers from bothseq.
seq1<-c(1,2,3)
seq2<-c(1,2,3)
for(i in seq1){
  for(j in seq2){
    if((i+j)%%2==0){
      print(paste(i,j))
    }
  }
}
#***********************************************************
#2 count number of even values in the following list using for loop
vect<-c(2,5,3,9,8,11,6)
count<-0
for(item in vect){
  if(item%%2==0){
    count=count+1
  }
  
}
print(count)

#******************************************************
#3 Find the factorial of a number 
n<-as.numeric(readline())
fact=1
for(i in 1:n){
  fact=fact*i
}
cat("Factorial of", n, "is", fact)
#*************************************************
#4 print the matrix
# Initialize a 3x2 matrix with zeros
matrix_3x2 <- matrix(0, nrow = 3, ncol = 2)
matrix_3x2

# Loop through rows and columns to populate the matrix
for (i in 1:3) {
  for (j in 1:2) {
    # You can replace the following line with your own logic to fill in the values
    matrix_3x2[i, j] <- i + j
  }
}

# Print the resulting matrix
print(matrix_3x2)

#*********************************************************
#5 print any table
num <- as.integer(readline("Enter a number for the table: "))

# Print the multiplication table using a for loop
cat("Multiplication Table for", num, ":\n")
for (i in 1:10) {
  result <- num * i
  cat(num, "x", i, "=", result,"\n")
}
#****************************************************
#6 pattern print
for (i in 1:5) {
  for (j in 1:i) {
    cat("* ")
  }
  cat("\n")
}
#**************************************************
#7 Program to calculate and prints the sum of elements in a 3x3 matrix.
matrix_data <- matrix(1:9, nrow = 3)
sum_matrix <- 0

for (i in 1:3) {
  for (j in 1:3) {
    sum_matrix <- sum_matrix + matrix_data[i, j]
  }
}

cat("Sum of matrix elements:", sum_matrix, "\n")
#********************************************************
#8 Take two lists from 1 to 5
# Print the sum of number1 and number2 
for(number1 in 1:5) { 
  
  for(number2 in 1:5) { 
    # Print the sum of number1 and number2 
    print(paste(number1, "+", number2, "=",  
                number1 + number2)); 
  } 
} 

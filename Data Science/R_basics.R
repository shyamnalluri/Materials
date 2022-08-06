##### My First Program#####
myString <- "Hello, World!"
myString

#### <-  ---> Assignment Operator
"Also can use '=' symbol, but not a good practice as 
it isn't clearer when you use them to set an argument value in a function call."
# For E.g.:
median(x = 1:10)
x
#Object not found, as it is declared within the function 
#& doesn't exist in the user workspace
median(y <- 1:10)
y  

#### # or "" ---> For comments, multi-line or single line 

#####R Basic Data types#####
v <- TRUE #Logical
class(v)

v <- 24.65 #Numeric
class(v)

v<- 2L #Integer----Using L to declare it as integer
class(v)

v<- 3+254i #complex
class(v)

v<- "This is R" #Character
class(v)

v<- charToRaw("Welcome to R") #Raw-- converts to raw bytes
class(v)
rawToChar(v)

#####Converting data types or coercion#####
y<- as.integer(3.14)
y

y<- is.integer("Hello")
y

y<- as.integer(3+345i)
y

y<- as.numeric("Hello")
y

#####Vectors#####
# Create a vector using c() function
apple <- c('red','green',"yellow")
print(apple)
# Get the class of the vector.
class(apple)

#####Lists#####
# Create a list.
list1 <- list(c(2,5,3),21.3,sin)
# Print the list.
list1

##Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

#####Array#####
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)

#####Factors######
# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')
a_num<-c(1,2,3,4,1,5,2,6)
# Create a factor object.
factor_apple <- factor(apple_colors)
factor_a_num<- factor(a_num)
# Print the factor.
print(factor_apple)
print(factor_a_num)
print(nlevels(factor_apple))

#####Data Frames#####
# Create the data frame.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)

#####cat()######
# Assignment using rightward operator.   
c(TRUE,1) -> var.3           
c(1,2)-> var.2
print(var.3)
cat ("var.3 is ", var.3 ,"\n")

######ls()#####
#prints the list of variables available in the environment
print(ls())

# List the variables starting with the pattern "var".
print(ls(pattern = "l")) 

######rm()#####
# Removing variable 3
rm(var.3)
print(var.3)

#####rm()&ls()#####
#to clear all the data values
rm(list = ls())

######Arithmetic Operators#####
# Adding two vectors
v <- c(2,5.5,6)
t <- c(8, 3, 4)
print(v+t)

# Subtracting two vectors
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v-t)

# Multiplies two vectors
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v*t)

# Divides 1st vector with 2nd vector
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v/t)

"Modulo
Gives the remainder of the first vector with the second"
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%%t)

#The result of division of first vector with second (quotient)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

#Difference between %% and %/%
11.8 %% 5

11.8 %/% 5

#The first vector raised to the exponent of second vector (v to the power of t)
v <- c(2,5.5,6)
t <- c(8, 3, 4)
print(v^t)

#####Relational Operators#####
# >-- greater than
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

# < -- lesser than
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v < t)

"== <-- Checks if each element of the first vector is equal to the 
corresponding element of the second vector."
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v == t)

# <= --- lesser than, equal to
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v<=t)

# >= --- greater than, equal to
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>=t)

# != --- not equal to
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)

####Logical Operators####
# &
z = 1:6
(z > 2) & (z < 5)

#Logical &
(z >2) && (z< 5)

# |
(z > 2) | (z < 5)
(z>12) | (z>15)

# Logical ||
(z > 2) || (z < 5)
(z>12) || (z>15)

#####Miscellaneous Operators####
# :--for a list of numbers
v <- 2:8
print(v) 

# %*%-- used multiply transposes
M = matrix( c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
t = M %*% t(M)
print(t)

#%in%-- used to identify if an element belongs to a vector.
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 

####Conditional Statements####
#if condition
x <- 30
if(is.numeric(x)) {
  print("X is an Numeric")
}

#if-else condition
x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found")
} else {
  print("Truth is not found")
}

#Else if Statement
x <- c("what","is","truth")

if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}

#Switch Statement
x <- switch(
  4,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)
##
####Loop####
#Repeat Loop
v <- c("Hello","loop")
cnt <- 1

repeat {
  print(v)
  cnt <- cnt+1
  
  if(cnt > 6) {
    break
  }
  
  
}

#While Loop
v <- c("Hello","while loop")
cnt <- 1

while (cnt < 6) {
  print(v)
  cnt = cnt + 1
}

#For loop
v <- LETTERS[5:20]
for ( i in v) {
  print(i)
}

####Loop Control####
#Break Statement
v <- c("Hello","loop")
cnt <- 1

repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

#Next Statement
v <- LETTERS[1:6]
for ( i in v) {
  
  if (i == "D") {
    next
  }
  print(i)
}

####Functions####
"SYNTAX: User-defined Function
function_name <- function(arg_1, arg_2, ...) {
  Function body 
}"

###Built-in functions
# Create a sequence of numbers from 32 to 44.
print(seq(32,44))

# Find mean of numbers from 25 to 82.
print(mean(25:82))

# Find sum of numbers frm 41 to 68.
print(sum(41:68))


###User-defined Functions
# Create a function to print squares of numbers in sequence.
new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}	
# Call the function new.function supplying 6 as an argument.
new.function(6)

###Calling function without Argument
# Create a function without an argument.
new.function <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	

# Call the function without supplying an argument.
new.function()

###Calling Function with Argument
# Create a function with arguments.
new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a = 11, b = 5, c = 3)

###Calling function with default argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

###Lazy Evaluation of Function
# Create a function with arguments.
new.function <- function(a, b) {
  print(a^2)
  print(a)
  print(b)
}

# Evaluate the function without supplying one of the arguments.
new.function(6, 5)

####Strings####
"Valid Strings"
a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)

"Invalid Strings"

e <- "Mixed quotes"
print(e)

f <- 'Single quote " inside single quote'
print(f)

g <- "Double quotes ' inside double quotes"
print(g)

####String Manipulation####
#Paste()-- Used to combine several strings

a <- "Hello"
b <- 'How'
c <- "are you?"

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))

#####Using format() function#####
#format(x, digits, nsmall, scientific, width, justify = c("left",
#"right", "centre", "none")) 

# Total number of digits displayed. Last digit rounded off.
result <- format(23.12345678915452, digits = 7)
print(result)

# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello", width = 8, justify = "l")
print(result)

# Justify string with center.
result <- format("Hello", width = 8, justify = "c")
print(result)

# Justify string with right.
result <- format("Hello", width = 8, justify = "r")
print(result)

####Miscellaneous Functions####
#nchar
result <- nchar("Count the number of characters")
print(result)

# Changing to Upper case.
result <- toupper("Changing To Upper")
print(result)

# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)

#Substring
# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)

####Vector Creation####
"Single Element Vector"
# Atomic vector of type character.
print("abc");

"Multiple Elements Vector"
# Creating a sequence from 5 to 13.
v <- 5:13
print(v)

# Creating a sequence from 6.6 to 12.6.
v <- 6.6:12.6
print(v)

# If the final element specified does not belong to the sequence
# then it is discarded.
v <- 3.6:11.4
print(v)

"Using sequence (Seq.) operator"
# Create vector with elements from 5 to 9 incrementing by 0.4.
print(seq(5, 9, by = 0.4))

"Using the c() function"
# The logical and numeric values are converted to characters.
s <- c('apple','red',5,TRUE)
print(s)

####Accessing Vector Elements####
# Accessing vector elements using position.
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)

####Vector Manipulation####
"Vector Arithmetic"
# Create two vectors.
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)

# Vector addition.
add.result <- v1+v2
print(add.result)

# Vector subtraction.
sub.result <- v1-v2
print(sub.result)

# Vector multiplication.
multi.result <- v1*v2
print(multi.result)

# Vector division.
divi.result <- v1/v2
print(divi.result)

"Vector Element Recycling"
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# V2 becomes c(4,11,4,11,4,11)

add.result <- v1+v2
print(add.result)

sub.result <- v1-v2
print(sub.result)

"Vector Element Sorting"
v <- c(3,8,4,5,0,11, -9, 304)

# Sort the elements of the vector.
sort.result <- sort(v)
print(sort.result)

# Sort the elements in the reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

# Sorting character vectors.
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)

# Sorting character vectors in reverse order.
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)

#####Lists-Additional#####
"Naming List Elements"
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),
                  list("green",12.3))

# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")

# Show the list.
print(list_data)

"Accessing List Elements"

# Access the first element of the list.
print(list_data[1])

# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[3])

# Access the list element using the name of the element.
print(list_data$A_Matrix)

"Manipulating List Elements"
# Add element at the end of the list.
list_data[4] <- "New element"
print(list_data[4])

# Remove the last element.
list_data[4] <- NULL

# Print the 4th Element.
print(list_data[4])

# Update the 3rd Element.
list_data[3] <- "updated element"
print(list_data[3])

"Merging Lists"
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)

# Print the merged list.
print(merged.list)

"Converting List to Vector"
# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)

# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)

####Matrix-Options#####
"Accessing Elements of a Matrix"

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

# Create the matrix.
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))

# Access the element at 3rd column and 1st row.
print(P[1,3])

# Access the element at 2nd column and 4th row.
print(P[4,2])

# Access only the  2nd row.
print(P[2,])

# Access only the 3rd column.
print(P[,3])

"Matrix Addition and Subtraction"
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)

# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

# Multiply the matrices.
result <- matrix1 * matrix2
cat("Result of multiplication","\n")
print(result)

# Divide the matrices
result <- matrix1 / matrix2
cat("Result of division","\n")
print(result)
##
#####Array-Additional#####
"Naming Columns and Rows"
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,
                                                                  matrix.names))
print(result)

# Print the third row of the second matrix of the array.
print(result[3,,2])

"Array-Addition by converting to a matrix"
# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]

# Add the matrices.
result <- matrix1+matrix2
print(result)

# Print the element in the 1st row and 3rd column of the 1st matrix.
##print(result[3,1,1])

# Print the 2nd Matrix.
##print(result[,,2])

#####Generating Factor Levels#####
v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)

#####str()#####
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Get the structure of the data frame.
str(emp.data)

# Add the "dept" column.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

#####rbind()####
# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)

# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

#####library-packages####
"Check Available R Packages"
.libPaths()

#####Get the list of all the packages installed#####
library()

#####Get all packages currently loaded in the R environment#####
search()

######Load Package to Library######
install.packages("E:/XML_3.98-1.3.zip", repos = NULL, type = "source")

#####r-bind,c-bind,merge#####
# Create vector objects.
city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

# Combine above three vectors into one data frame.
addresses <- cbind(city,state,zipcode)

# Print a header.
cat("# # # # The First data frame\n") 

# Print the data frame.
print(addresses)

# Create another data frame with similar columns
new.address <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c("80230","33949"),
  stringsAsFactors = FALSE
)

# Print a header.
cat("# # # The Second data frame\n") 

# Print the data frame.
print(new.address)

# Combine rows form both the data frames.
all.addresses <- rbind(addresses,new.address)

# Print a header.
cat("# # # The combined data frame\n") 

# Print the result.
print(all.addresses)

library(MASS)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                     by.x = c("bp", "bmi"),
                     by.y = c("bp", "bmi")
)
print(merged.Pima)
nrow(merged.Pima)

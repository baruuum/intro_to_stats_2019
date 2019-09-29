
### STYLE SUGGESTION ###############################################
#                                                                 ##
# Try to become familiar with the keyboard shortcuts provided in  ##
# Rstudio and USE THEM.                                           ##
#                                                                 ##
####################################################################

# you can look at the list of shortcuts by typing 
# Alt/Option + Shift + K

### STYLE SUGGESTION ###############################################
#                                                                 ##
# Break your code down into "sections" by using                   ##
#                                                                 ##
# ## ----------------------------------------------------------   ##
#                                                                 ##
# Also, use as many comments as possible to document what you are ##
# doing in your code                                              ##
#                                                                 ##
####################################################################


## Arithmetic Operations -------------------------------------------

### Basic Arithmetic Operations

# add two numbers
2 + 1

# multiply two numbers
2 * 2

# divide one number by another
2 / 2

# raise 5 to the power of 3
5^3


### Operator Precedence

# this will evaluate as 2 + (1 / 3)
2 + 1 / 3

# to calculate (2 + 1) / 3
(2 + 1) / 3

### STYLE SUGGESTION ###############################################
#                                                                 ##
# If you use arithmetic operations, +, -, /, put a space both     ##
# before and after these operators. The only exception for this   ##
# rule is ^.                                                      ##
#                                                                 ##
####################################################################

# compare
(2*(25+5))^5-20
# to 
(2 * (25 + 5))^5 - 20

### Special mathematical functions

# logarithm is the inverse-function of the exponential function
exp(log(4.123))

# square-root of 2/3
sqrt(2 / 3)

# alternative way to calculate square-root
(2 / 3)^0.5

# try 
?Special

### EXERCISE ###

## Objects in R ----------------------------------------------------

### Assignment

# assign to the object x the number 7 using <-
x <- 7

# assign to y the number 10.2 using =
y = 10.2

# calculate their sum
x + y

### STYLE SUGGESTION ###############################################
#                                                                 ##
# Use either <- or = for assignment, but be consistent            ##
#                                                                 ##
# Regardless of <- or =, add a whitespace both before and after   ##
# the operator                                                    ##
#                                                                 ##
####################################################################

## Naming rules ----------------------------------------------------

### Data types and Data Structures ---------------------------------

### Vectors 

# create a numeric vector of length 5
v1 = vector(mode = "numeric", length = 5)
v1

# create a character vector of length 3
v2 = vector(mode = "character", length = 3)
v2

### STYLE SUGGESTION ###############################################
#                                                                 ##
# When specifying options, add a whitespace both before and       ##
# after =                                                         ##
#                                                                 ##
####################################################################

# check whether v1 is a vector
is.vector(v1)

# check length of vector v1
length(v1)

# check mode (i.e., data type) of vector v2
class(v2)

# assign sequence of integers to v3
v3 = 1:5

# extract the third element of the vector v3
v3[3]

# assign 2nd element of v3 to the object z
z = v3[2]

# replace 4th element of v3 with 10
v3[4] = 10

# create a new vector
v4 = c(2.3, 4.6, 1.2, 5.2, 1.4)

# have a look at v4
v4

# add two vectors
v3 + v4

# element-wise multiplication
v3 * v4

# sum all elements of v3
sum(v3)

# concatenate the vectors v3 and v4
c(v3, v4)

### EXERCISE ###

### Matrices

# create 4 X 4 square matrix (fill by column)
m1 = matrix(1:16, nrow = 4, ncol = 4)
m1

# create 4 X 4 square matrix (fill by row)
m2 = matrix(1:16, nrow = 4, ncol = 4, byrow = TRUE)
m2

# bad code
m3=matrix(c(1.2,4.5,6.2,43.6,100,234.1,13,4,42.1,63.0,234,92),nrow=4,ncol=3,byrow=TRUE)

# better code
m3 = matrix(
    c(1.2, 4.5, 6.2, 43.6, 100, 234.1, 13, 4, 42.1, 63.0, 234, 92),
    nrow = 4,
    ncol = 3,
    byrow = TRUE)
    
# even better
m3 = matrix(
    c(1.2, 4.5, 6.2, 
      43.6, 100, 234.1, 
      13, 4, 42.1, 
      63.0, 234, 92),
    nrow = 4,
    ncol = 3,
    byrow = TRUE)

### STYLE SUGGESTION ###############################################
#                                                                 ##
# If multiple arguments are specified in a function and the       ##
# arguments are long, add one argument per line and indent the    ##
# code, so that it is clear where the function starts and where   ##
# it ends.                                                        ##
#                                                                 ##
# When indenting code use 4 spaces                                ##
#                                                                 ##
####################################################################

# add two matrices
m1 + m2

# transpose a matrix
t(m1)

# element-wise multiplication of two matrices
m1 * m2

# matrix multiplication
m1 %*% m2

# row and column binds
rbind(m1, m2)
cbind(m1, m2, m3)

# extract the (2,3)th element of the matrix m1
# (i.e., that element that corresponds to the 2nd row and the 3rd column of m1)
m1[2, 3]

# get the 3rd row of m1
m1[3, ]

# get the 4th column of m1
m1[, 4]

# get a submatrix by extracting elements in the first two rows and the first two columns
m1[1:2, 1:2]

# you can also extract submatrices with row/colmun combinations that are not adjacent
m1[c(1, 3), c(1, 4)]

# or you can extract submatrices by extracting multiple rows/columns
m1[, c(2, 3)]
m1[3:4, ]

# check whether object is matrix
is.matrix(m1)

is.matrix(m1[, 3])
is.vector(m1[, 3])

is.matrix(m1[, 2:3])
is.vector(m1[, 2:3])

### STYLE SUGGESTION ###############################################
#                                                                 ##
# Let x be a matrix. When subsetting x, add a whitespace after    ##
# the comma but not before it. For example,                       ##
#                                                                 ##
# - when extracting row(s) from x, use x[2, ] instead of x[2,];   ##
# - when extracting column(s) from x, use x[, 1] instead of       ##
#   x[ , 1];                                                      ##
# - when extracting both row(s) and column(s) from x, use         ##
#   x[1:2, 3:4] instead of x[1:2 , 3:4] or x[1:2,3:4].            ##
#                                                                 ##
####################################################################

### EXERCISE ###

### Mixing different data types

# mix logical and numeric types
v1 = c(TRUE, FALSE, 1)
class(v1)

# mix numeric and character types
v2 = c(3, 2, "1")
class(v2)

# try to add these two vectors (which are of the same length)
v1 + v2

### EXERCISE ###


## Functions -------------------------------------------------------

# define function
my_fun = function(x, y) {
  
  # first statement (add x and y)
  sum_xy = x + y
  
  # second statement (divide the sum by 2)
  res = 0.5 * sum_xy
    
  # return result
  return(res)

}

# check code
my_fun

# passing arguments to functions
my_fun(x = 3, y = 5)
my_fun(x = c(2.5, 1), y = c(10, 22))
my_fun(x = 10, y = "hello")

# new functions (with default values)
my_fun_ab = function(a = 3, b = 5) {
  
  # add a and b
  sum_ab = b + a
  
  # divide the sum by 2
  res = 0.5 * sum_ab
    
  # return result
  return(res)

}

# check that function returns same results
my_fun(1, 5)
my_fun_ab(1, 5)

# run function without any arguments (default values not specified in function definition)
my_fun()

# run function without any arguments (default values specified in function definition)
my_fun_ab()

# specify only one argument
my_fun(a = 3)
my_fun_ab(a = 3)
my_fun_ab(3)
my_fun_ab(a = 3, b = 5)

### EXERCISE ###


## Installing and Using Packages -----------------------------------

# install data.table package
install.packages("data.table", 
                 dependencies = TRUE, 
                 repos = "https://cran.rstudio.com")

### EXERCISE ###

# get sessionInfo()
sessionInfo()

# load package
library("data.table")
sessionInfo()

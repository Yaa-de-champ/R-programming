# # # # Define 2 vectors
# cars <- c(1, 3, 6, 4, 9) #nolint
# trucks <- c(2, 5, 4, 5, 12) #nolint

# # Graph cars using a y-axis that ranges from 0 to 12
# plot(cars, type = "o", col = "blue", ylim = c(0, 12)) #nolint

# # Graph trucks with red dashed lines and square points
# lines(trucks, type = "o", pch = 22, lty = 2, col = "red") #nolint

# # Create a title with a red, bold/italic font #nolint
# title(main = "Autos", col.main = "red", font.main = 4) #nolint

# # print(1 + 2)R #nolint
# print(3 / 2)R #nolint

# ?print() #nolint
# # vec_1 <- c(1, 3, 4) #nolint

# # print(vec_1) #nolint

# matrix(c(3:8), nrow = 2) #nolint

# quarter_1_sales <- 35657.98 #nolint
# quarter_2_sales <- 43810.55 #nolint
# midyear_sales <- quarter_1_sales + quarter_2_sales #nolint
# yearend_sales <- midyear_sales * 2 #nolint

# print(midyear_sales) #nolint
# print(yearend_sales) #nolint

# x <- 2 #nolint
# if (x > 0) {

#     print("x is a positive number") #nolint

# }

# x <- 7 #nolint

# if (x > 0) {

#     print("x is a positive number") #nolint

# } else {

#     print("x is either a negative number or zero") #nolint

# }

# # ---------------------------------------------------------------------------
# x <- -1 #nolint

# if (x < 0) {

#  print("x is a negative number") #nolint

# } else if (x == 0) {

#     print("x is zero") #nolint

# } else {

#     print("x is a positive number") #nolint

# }
# -------------------------------------------------------------------------------------------------- #nolint


# names <- c("Peter", "Jennifer", "Julie", "Alex") #nolint
# age <- c(15, 19, 21, 56) #nolint
# people <- data.frame(names, age) #nolint
# print(people) #nolint
# # str(people) #nolint
# # head(people) #nolint
# # colnames(people) #nolint
# glimpse(people) #nolint
# mutate(people, age_in_20 = age + 20) #nolint

# # --------------------------------------------------------------------------------------------- #nolint

# fruits <- c("mango", "orange", "pawpaw", "pineapple") #nolint
# rank <- c(3, 4, 2, 1) #nolint

# fruit_ranks <- data.frame(fruits, rank) #nolint
# print(fruit_ranks) #nolint


library("tidyverse")
library(ggplot2)
# data(diamonds) #nolint
# view(diamonds) #nolint
# print(diamonds) #nolint
# as_tibble(diamonds) #nolint

# data(mtcars) #nolint
# view(mtcars) #nolint
# print(mtcars) #nolint

bookings_df <- read_csv("hotel_bookings.csv")
# # head(bookings_df) #nolint
# str(bookings_df) #nolint
# colnames(bookings_df) #nolint

new_df <- select(bookings_df, `adr`, adults)
mutate(new_df, total = `adr` / adults)
print(new_df)


penguins %>%  #nolint
    rename(island_new=island) #nolint

rename_with(penguins, toupper) #renaming column names in capital letter
rename_with(penguins, tolower)  #renaming column names in lower case

x <- 2
y <- 3

print( x - y ) #nolint
print( x * y ) #nolint
print( x / y ) #nolint

library("tidyverse")
penguins %>% arrange(bill_length_mm) #arrrangiing in ascending order
penguins %>% arrange(-bill_length_mm) #arranging in descending order

# penguins2 <- penguins %>% arrange(-bill_length_mm) #saving new dataframe known as penguin2 #nolint
# view(penguins2) #nolint

# penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm)) #nolint
# penguins %>% group_by(island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm)) #nolint
# penguins %>% group_by(island) %>% drop_na() %>% summarise(min_bill_length_mm = min(bill_length_mm)) #nolint


id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia") #nolint
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer") #nolint
employee <- data.frame(id, name, job_title)

# view(employee) #nolint

separate(employee, name,  into = c("first_name", "last_name"), sep = ' ') #nolint

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")#nolint

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia") #nolint

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer") #nolint

id <- 1:10

employee <- data.frame(id, first_name, last_name, job_title)

unite(employee, 'name', first_name, last_name, sep = ' ') #nolint

print(employee)

hotel_bookings <- read.csv("~/GitHub/R-programming/hotel_bookings.csv")

library('palmerpenguins') #nolint
view('penguins') #nolint

penguins %>% mutate(body_mass_kg = body_mass_g/1000, flipper_length_m=flipper_length_mm/1000) #nolint #nolint



# Min: The minimum value.
# 1st Qu: The value of the first quartile (25th percentile).
# Median: The median value.
## Mean: The mean value.
# 3rd Qu: The value of the third quartile (75th percentile).
# Max: The maximum value.

#32 rows and 11 columns


'I am well'

for (x in 1:10)
  print(x)

a = 'This is Accra'
print(a)

name <- 'John'
age <- 40

print(name)
print(age)

text <- 'awesome'
paste('R is', text)

text1 <- 'R is'
text2 <- 'awesome'
paste(text1, text2)

print(class('This is a string'))

a <- 10.5
class(a)

b <- 1000L
class(b)

d <- 9i + 3
class(d)

e <- 'R is exciting'
class(e)

f <- TRUE
class(f)

list <- c(1, 5, -1, 10)
print(min(list))
print(max(list))

x = sqrt(9)
print(x)

print(ceiling(1.4))
print(floor(1.4))

str <- 'This is R programming session. We are learning the basics of R for the applications '
cat(str)

a <- 23
b <- 54

print(a/b)
print(a-b)
print(a*b)
print(a^b)
print(a+b)

print(31*78)

print(697/41)

x <- 39
y <- 22

z = x-y

print(z)

b <- sqrt(2345) 

m <- print(b)

print(log2(m))

print(m)

x <- 1L
y <- 2

a <- as.numeric(x)
b <- as.integer(y)

print(x)
print(y)

class(a)
class(b)

a <- 33
b <- 33

if (b > a) {
  print('b is greater than a')
} else if (a == b) {
  print('a and b are equal')
}

a <- 200
b <- 33

if (b > a) {
  print('b is greater than a')
} else if (a == b) {
  print(' a and b are equal ')
} else {
  print('a is greater than b')
}

x <- 41

if (x >10) {
  print('Above ten')
  if (x > 20) {
    print('and also above 20')
  } else {
    print('but not above 20')
  }
} else {
  print('below 10')
}

data()
head()
tail()
dim()
names()
nrow()
ncol()

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

library('palmerpenguins') #nolint
view('penguins') #nolint

penguins %>% mutate(body_mass_kg = body_mass_g/1000, flipper_length_m=flipper_length_mm/1000) #nolint #nolint

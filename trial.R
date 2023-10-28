# library(tidyverse)
# library(skimr)
# library(janitor)

# bookings_df <- read_csv("hotel_bookings.csv")

# head(bookings_df) #nolint

# str(bookings_df)  #nolint

# glimpse(bookings_df) #nolint

# colnames(bookings_df) #nolint

# skim_without_charts(bookings_df) #nolint

# trimmed_df <- bookings_df %>% select(hotel, is_canceled, lead_time) # nolint

# Rename the variable 'hotel' to be named 'hotel_type' to be crystal clear on what the data is about: #nolint
# trimmed_df <- bookings_df %>% select(hotel, is_canceled, lead_time) %>% rename(hotel_type = hotel) #nolint

# print(trimmed_df) #nolint

# You can also use the`mutate()` function to make changes to your columns. Let's say you wanted to create a new column that summed up all the adults, children, and babies on a reservation for the total number of people. Modify the code chunk below to create that new column: #nolint
# example_df <- bookings_df %>% mutate(guests = adults + children + babies) #nolint
# head(example_df) #nolint
# print(example_df) #nolint

# Calculate the total number of canceled bookings and the average lead time for booking - you'll want to start your code after the %>% symbol. Make a column called 'number_canceled' to represent the total number of canceled bookings. Then, make a column called 'average_lead_time' to represent the average lead time. Use the `summarize()` function to do this in the code chunk below: #nolint

# example_df <- bookings_df %>% summarize(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time))     #nolint
# head(example_df)   #nolint
# print(example_df)  #nolint
# library(Tmisc)         #nolint
# data(quartet)      #nolint
# view(quartet)        #nolint #nolint


# quartet %>% group_by(set) %>% summarize(mean(x), sd(x), mean(y), sd(y),)

# ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(-set) #nolint


# # from chatgpt
# # Load necessary packages
# library(dplyr)
# library(ggplot2)
# library(tidyverse)

# # Load the data
data(quartet)

# # Summarize the data
# quartet_summary <- quartet %>%
#     group_by(set) %>%
#     summarize(mean_x = mean(x),
#             sd_x = sd(x),
#             mean_y = mean(y),
#             sd_y = sd(y))

# # Create a scatter plot with regression lines and facet by 'set'
# ggplot(quartet, aes(x, y)) +
#         geom_point() +
#     geom_smooth(method = "lm", se = FALSE) +
#     facet_wrap(~set)

# library(datasauRus)
# ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset)) +geom_point() + theme_void() + theme(legend.position ="none" ) + facet_wrap(~dataset, ncol=3) #nolint

# png("plot.png", width = 800, height = 600)  # Adjust width and height as needed
# # Your plotting code here
# dev.off()  # Close the PNG device

# mean(hotel_bookings$lead_time)



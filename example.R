# library(Tmisc)         #nolint
# data(quartet)      #nolint
# view(quartet) 

#library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)
# ggplot(data=penguins)+geom_point((mapping=aes(x=flipper_length_mm,y=body_mass_g))

hotel <- read.csv("hotel_bookings.csv")
head(hotel)
colnames(hotel)

library(ggplot2)

ggplot(data=hotel) + geom_point(mapping=aes(x=lead_time, y=children))
ggplot(data=hotel) + geom_point(mapping=aes(x=stays_in_weekend_nights, y=children))
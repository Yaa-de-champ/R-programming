# library(Tmisc)         #nolint
# data(quartet)      #nolint
# view(quartet) 

#library(ggplot2)
# library(palmerpenguins)

# data(penguins)
# View(penguins)
# ggplot(data=penguins)+geom_point((mapping=aes(x=flipper_length_mm,y=body_mass_g))

# hotel <- read.csv("hotel_bookings.csv")
# head(hotel)
# colnames(hotel)

# library(ggplot2)

# ggplot(data=hotel) + geom_point(mapping=aes(x=lead_time, y=children))
# ggplot(data=hotel) + geom_point(mapping=aes(x=stays_in_weekend_nights, y=children))

hotel <- read.csv("hotel_bookings.csv")
# head(hotel)
# colnames(hotel)

library(ggplot2)
library(dplyr)

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel))
print(ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel)))

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel, ))

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel)) + facet_wrap(~ )

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel)) + facet_wrap(~deposit_type ) + theme(axis.text.x = element_text(angle=45))

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel)) + facet_wrap(~market_segment ) + theme(axis.text.x = element_text(angle=45))

ggplot(data=hotel) + geom_bar(mapping=aes(x=distribution_channel)) + facet_grid(~market_segment ) + theme(axis.text.x = element_text(angle=45))







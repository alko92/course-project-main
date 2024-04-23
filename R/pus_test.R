# load libraries
library(dplyr)
library(lubridate)
library(readr)
library(ggplot2)
# read Ebola data
data_ebola <- ebola
# sort data_ebola by date
data_ebola <- data_ebola %>% arrange(Date)

data_ebola

ebola_date
data_ebola_cum_cases <- ebola_date %>% 
  select(date = Date, country = Country, cum_conf_cases = Cum_conf_cases) %>% 
  filter(date <= ymd("2015-03-31") & 
           (country == "Guinea" | country ==  "Liberia" | country == "Sierra Leone"))
plot_ebola_point_v0 <- ggplot(date = data_ebola_cum_cases,
                              mapping = aes(x = date, y = cum_conf_cases))
                              + geom_point()

# load library
library(ggplot2)

# crete point plot
plot_ebola_point_v0 <- ggplot(data = data_ebola_cum_cases, 
                              mapping = aes(x = date, y = cum_conf_cases)) + 
  geom_point()

# create line plot
plot_ebola_line_v0 <- ggplot(data = data_ebola_cum_cases, 
                             mapping = aes(x = date, y = cum_conf_cases)) + 
  geom_line(aes(group = country))

# create column plot
plot_ebola_col_v0 <- ggplot(data = data_ebola_cum_cases, 
                            mapping = aes(x = date, y = cum_conf_cases)) + 
  geom_col(position = "stack") +
  ggtitle(label = "Confirmed Ebola cases")

plot_ebola_point_v0 

ggplot(ebola, )
plot_ebola_col_v0

plot_covid_point_v1 <- ggplot(data = covid_cantons_2020, 
                              mapping = aes(x = datum, y = entries)) + 
  geom_point(alpha = 0.7, colour = "black", fill = "blue", 
             shape = 21, size = 1.5, stroke = 1.5)

plot_covid_point_v1
geom_point
#comment ----
plot_covid_point_v2 <- ggplot(data = covid_cantons_2020, 
                              mapping = aes(x = datum, y = entries)) + 
  geom_point(alpha = 8, colour = "black", fill = "blue", 
             shape = 21, size = 1.5, stroke = 1.5)

plot_covid_point_v2

plot_covid_line_v1 <- ggplot(data = covid_cantons_2020, 
                             mapping = aes(x = datum, y = entries)) + 
  geom_line(mapping = aes(group = geoRegion), 
            alpha = 0.7, colour = "red", linetype = "solid", linewidth = 1.0)
plot_covid_line_v1
setwd()

usethis::use_git()
usethis :: use_git()


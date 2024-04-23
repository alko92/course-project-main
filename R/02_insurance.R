library(readr)
read_csv(here("data", "raw", "insurance_with_date.csv"))
read_csv("insurance_with_date.csv")
library(here)
read_csv(here("data", "raw", "insurance_with_date.csv"))
read.csv("insurance_with_date.csv")
data <-read_csv(here("data", "raw", "insurance_with_date.csv"))
library(dplyr)
data
> data$sex
is.character(data$sex)
sex <- factor(data$sex, levels = c("male", "female"))
factor
sex
data$region
table(data$region)
region <- factor(data$region, levels = c("northeast", "northwest", "southeast", "southwest" ))
install.packages("unibecol")

data$gt2_children<-data$children>2
mutate(data, gt2_children = children < 2)
mutate(data, smokes = smoker == "yes")
mutate
data

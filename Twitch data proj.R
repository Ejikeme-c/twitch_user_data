library(readxl)

# Loading in the excel file that i want to use
Twitch_user_data <- read_excel("Desktop/Excel worksheets/Twitch_user_data.xlsx", sheet = "Standard_Twitch_user_data")
 
View(Twitch_user_data)   

#loading the tidyverse package to use the glimpse function 
library(tidyverse)

glimpse(Twitch_user_data)

#Loading in the data.table library to change the data frame to a data table and get a sample from the data set of 
# size 300
library(data.table)

Twich_user_table <- data.table(Twitch_user_data)

Twitch_user_sample <- Twich_user_table[sample(.N, 300)]

glimpse(Twitch_user_sample)

#installing the writexl package to export the the newly created data table containing the sample
install.packages("writexl")

library(writexl)

?write_xlsx

write_xlsx(Twitch_user_sample, path = "Desktop/Excel worksheets/Twitch_user_sample.xlsx", col_names = TRUE)

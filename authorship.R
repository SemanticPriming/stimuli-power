# devtools::install_github("marton-balazs-kovacs/tenzing")
library(tenzing)
library(googlesheets4)

DF <- read_sheet(ss = "https://docs.google.com/spreadsheets/d/1KMBSWE_3IPmwN1mgjF6wEWp5rA89iTXqpOQbwdY7Ag0/edit?usp=sharing")

nrow(DF)

DF <- DF %>% 
  filter(`Authorship Survey` == "yes" | 
           `Writing - original draft` == TRUE)

nrow(DF)
cat(print_yaml(DF))

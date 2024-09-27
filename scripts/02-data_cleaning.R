#### Preamble ####
# Purpose: Cleans the raw data 
# Author: Claire Ma
# Date: 27 September 2024 
# Contact: minglu.ma@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(tidyr)

#### Clean data ####
raw_data <- read_csv("/Users/luuu/Downloads/starter_folder-main/inputs/data/raw_data/raw_data.csv")

head(raw_data)
cleaned_data <- raw_data %>%
  select(X_id, Status, Ward, Affordable.Homes.Approved..2020...Present.) %>%  # Select necessary columns
  drop_na()

#### Save data ####

write_csv(cleaned_data, "/Users/luuu/Downloads/starter_folder-main/output/data/cleaned_data.csv")



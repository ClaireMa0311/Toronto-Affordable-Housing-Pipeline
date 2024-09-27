#### Preamble ####
# Purpose: Tests simulated data and cleaned data
# Author: Claire Ma 
# Date: 27 September 2024 
# Contact: minglu.ma@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Test data ####
# Test simulated data 
simulated_data <- read_csv("/Users/luuu/Downloads/starter_folder-main/output/data/simulated_data/simulated_data.csv")
# Check if there are any zero values in the 'Status' column (Note: Status is categorical, so this step is to ensure no unintended zeros)
zero_status <- sum(simulated_data$Status == "0")  # Check if '0' appears in the Status column
if (zero_status > 0) {
  print(paste("There are", zero_status, "'0' values in the Status column"))
} else {
  print("No zero values in the Status column")
}

# Check for zero values in the 'Ward' column
zero_ward <- sum(simulated_data$Ward == 0)
if (zero_ward > 0) {
  print(paste("There are", zero_ward, "zero values in the Ward column"))
} else {
  print("No zero values in the Ward column")
}

# Check for zero values in the 'Affordable_Homes_Approved_2020' column
zero_affordable_homes <- sum(simulated_data$Affordable_Homes_Approved_2020 == 0)
if (zero_affordable_homes > 0) {
  print(paste("There are", zero_affordable_homes, "zero values in the Affordable Homes Approved by 2020 column"))
} else {
  print("No zero values in the Affordable Homes Approved by 2020 column")
}

#### Summary of Zero Value Check ####
list(
  zero_status = zero_status,
  zero_ward = zero_ward,
  zero_affordable_homes = zero_affordable_homes
)

# Test cleaned data 

cleaned_data <- read_csv("/Users/luuu/Downloads/starter_folder-main/output/data/cleaned_data.csv")
zero_status <- sum(cleaned_data$Status == "0")  # Check if '0' appears in the Status column
if (zero_status > 0) {
  print(paste("There are", zero_status, "'0' values in the Status column"))
} else {
  print("No zero values in the Status column")
}

# Check for zero values in the 'Ward' column
zero_ward <- sum(cleaned_data$Ward == 0)
if (zero_ward > 0) {
  print(paste("There are", zero_ward, "zero values in the Ward column"))
} else {
  print("No zero values in the Ward column")
}

# Check for zero values in the 'Affordable Homes Approved by 2020' column
zero_affordable_homes <- sum(cleaned_data$Affordable.Homes.Approved..2020...Present. == 0)
if (zero_affordable_homes > 0) {
  print(paste("There are", zero_affordable_homes, "zero values in the Affordable Homes Approved by 2020 column"))
} else {
  print("No zero values in the Affordable Homes Approved by 2020 column")
}

#### Summary of Zero Value Check ####
list(
  zero_status = zero_status,
  zero_ward = zero_ward,
  zero_affordable_homes = zero_affordable_homes
)
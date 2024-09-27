#### Preamble ####
# Purpose: Simulates Data
# Author: Claire Ma
# Date: 27 September 2024
# Contact: minglu.ma@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####

# Load necessary library
set.seed(1008047418)  # For reproducibility

# Create a simulated dataset
n <- 100  # Number of rows to simulate

# Simulate the columns
id <- 1:n  # ID column
status <- sample(c("Under Review", "Pre-Planning", "Under Construction", "Occupied", "Cancelled", "Final Planning Approval"), n, replace = TRUE)  # Status column
ward <- sample(1:25, n, replace = TRUE)  # Ward column (1 to 25)
affordable_homes_approved <- sample(0:2000, n, replace = TRUE)  # Affordable Homes Approved by 2020

# Combine into a data frame
simulated_data <- data.frame(ID = id, Status = status, Ward = ward, Affordable_Homes_Approved_2020 = affordable_homes_approved)

# View the first few rows
head(simulated_data)

# Save the simulated data to a CSV file
write_csv(simulated_data, "/Users/luuu/Downloads/starter_folder-main/output/data/simulated_data.csv")



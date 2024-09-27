#### Preamble ####
# Purpose: Downloads and saves the data from Opendata pakage
# Author: Claire Ma 
# Date: 27 September 2024 
# Contact: minglu.ma@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
marriage_licence_packages <- search_packages("Affordable Housing Pipeline")
# Retrieve a list of all resources (datasets) available within the found package
marriage_licence_resources <- marriage_licence_packages %>%
  list_package_resources()
# Display the list of resources available in the "Marriage Licence Statistics" package
marriage_licence_resources
marriage_licence_statistics <- marriage_licence_resources[4,] %>%
  get_resource()
data = marriage_licence_statistics



#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "/Users/luuu/Downloads/starter_folder-main/inputs/data/raw_data/raw_data.csv") 

         

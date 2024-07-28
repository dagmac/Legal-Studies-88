# IMPORT A DATA SET

wapo_shootings <- read.csv("C:/Users/dmacleod/Downloads/fatal-police-shootings-data (3).csv")
wapo_agencies <- read.csv("C:/Users/dmacleod/Downloads/fatal-police-shootings-agencies.csv")

str(wapo_shootings)

class(wapo_shootings$date)


# CONVERT A DATE VARIABLE THAT IS FORMATTED AS A CHARACTER INTO A TRUE DATE VARIABLE
wapo_shootings$date <- as.Date(wapo_shootings$date, format="%Y-%m-%d")

# EXTRACT YEAR AND MONTH VALUES FROM THE DATE VARIABLE
wapo_shootings$year <- format(wapo_shootings$date, "%Y")
wapo_shootings$month <- format(wapo_shootings$date, "%m")

# FORMAT THE NEW MONTH AND YEAR VARIABLES AS NUMERIC RATHER THAN CHARACTER
wapo_shootings$year <- as.numeric(format(wapo_shootings$date, "%Y"))
wapo_shootings$month <- as.numeric(format(wapo_shootings$date, "%m"))

head(wapo_shootings)


# USEFUL PACKAGE FOR DATA MANIPULATION
install.packages("dplyr")
library(dplyr)


# GROUP BY YEAR AND COUNT OF OCCURRENCES OF A VALUE
annual_shootings <- wapo_shootings %>%
  group_by(year) %>%
  summarise(count = n())

# View the summary
print(annual_shootings)



#OS
install.packages("rio")
library(rio)


wapo_shootings$date_new <- as.Date(wapo_shootings$Date, format = "%Y-%m-%d")

la_2019_2020$Dispatch_Date_New <- format(as.Date(la_2019_2020$Dispatch_Date_New, format = "%m/%d/%Y"), "%m/%d/%Y")


class(date_new)



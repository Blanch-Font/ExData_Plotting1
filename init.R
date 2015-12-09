library(dplyr)

data <- readr::read_delim("household_power_consumption.txt", delim=";", 
                          col_types="ccddddddd", na="?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$datetime <- with(data,strptime(paste(Date,Time), format="%Y-%m-%d %H:%M:%S"))

data <- data %>% filter(Date>=as.Date("2007-02-01") & Date<=as.Date("2007-02-02"))

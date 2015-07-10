## Course Prject 1 - Exploratory Data Analysis
## Plot2
library(lubridate)

# Calculation of the initial row number according the initial date and time
ini_date <- (31+16)*60*24-(17*60+24)

# Calculation of row numbers corresponding to february 2007
days <- (2*60*24)

# Reading the file
data_set <- read.csv("household_power_consumption.txt", skip = ini_date, nrows = days, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Creating Data/Time variable
data_set$DateTime <- strptime(paste(data_set$Date, data_set$Time),  "%d/%m/%Y %H:%M:%S")

# Creating the png file to avoid errors using dev.copypng
png("plot2.png", width=480, height=480)
plot(data_set$DateTime, data_set$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
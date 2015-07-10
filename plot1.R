## Course Prject 1 - Exploratory Data Analysis
## Plot1

# Calculation of the initial row number according the initial date and time
ini_date <- (31+16)*60*24-(17*60+24)

# Calculation of row numbers corresponding to february 2007
days <- (2*60*24)

# Reading the file
data_set <- read.csv("household_power_consumption.txt", skip = ini_date, nrows = days, col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Creating the png file to avoid errors using dev.copypng
png("plot1.png", width=480, height=480)
hist(as.numeric(data_set$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab ="Frequency")
dev.off()
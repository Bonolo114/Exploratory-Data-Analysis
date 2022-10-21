

names<- data.frame("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
dim(names)

data<- read.table("household_power_consumption.txt", sep =";",skip = 1, col.names = names, na.strings = "?")

library(lubridate)

data$Date<- dmy(data$Date)
data$Time<- hms(data$Time)
data$Global_active_power<-as.numeric(data$Global_active_power)
data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
data$Voltage<- as.numeric(data$Voltage)
data$Global_intensity<- as.numeric(data$Global_intensity)
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)
data$Sub_metering_2 <- as.numeric(data$Sub_metering_2)
data$Sub_metering_3 <- as.numeric(data$Sub_metering_3)

# Confirm asset class
sapply(data, class)


# Subset usage data
data2<- data[which(data[ , "Date"] == c("2007-02-01", "2007-02-02")),]








#Plot 1


hist(data2$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",)

dev.copy(png, file = "plot1.png")
dev.off()

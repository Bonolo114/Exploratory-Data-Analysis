#Plot 2
with(data2, plot(Date, Global_active_power, type = "l", 
                 ylab = "Global Active Power (kilowatts)", xlim= c()))
dev.copy(png, file = "plot2.png")
dev.off()

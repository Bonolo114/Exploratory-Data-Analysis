#plot 4

par( mfrow = c(2,2), mar = c(4,4,2,1))
with(data2, plot( Global_active_power,type="l", ylab = "Global Active Power"))

with(data2, plot( Voltage,type="l", xlab ="datetime", ylab = "Voltage"))


with(data2,plot(Sub_metering_1,type="l"), ylab = "Energy sub metering",oma = c(0,0,2,0))
points(data2$Sub_metering_2,type="l", col = "red")
points(data2$Sub_metering_3,type="l", col = "blue")
legend("topright", pch = c("-", "-", "-"), col = c("black", "red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(data2, plot( Global_reactive_power , type="l", xlab = "datetime", 
     ylab = "Global_reactive_power"))

dev.copy(png, file = "plot4.png")
dev.off()

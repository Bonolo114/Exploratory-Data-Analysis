# plot 3
plot(data2$Sub_metering_1,type="l", ylab = "Energy sub metering", oma = c(0,0,2,0))
points(data2$Sub_metering_2,type="l", col = "red")
points(data2$Sub_metering_3,type="l", col = "blue")
legend("topright", pch = c("-", "-", "-"), col = c("black", "red","blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()
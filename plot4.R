# load the data for 2007-02-1 & 2007-02-02 into hpcData
source("loadData.R")

# create plot 4
par(mfcol = c(2, 2), cex = 0.6)
plot(hpcData$Time, hpcData$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power")

plot(hpcData$Time, hpcData$Sub_metering_1, type = "n", 
     xlab = "", ylab = "Energy sub metering")
points(hpcData$Time, hpcData$Sub_metering_1, type = "l", col="black")
points(hpcData$Time, hpcData$Sub_metering_2, type = "l", col="red")
points(hpcData$Time, hpcData$Sub_metering_3, type = "l", col="blue")
legend("topright",  bty = "n", lwd = 1, col = c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(hpcData$Time, hpcData$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

plot(hpcData$Time, hpcData$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")

# save to png using default size of 480 x 480 px
dev.copy(png, file = "plot4.png")
dev.off()
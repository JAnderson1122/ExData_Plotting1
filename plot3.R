# load the data for 2007-02-1 & 2007-02-02 into hpcData
#source("loadData.R")

# create plot 3
par(cex = 0.8)
plot(hpcData$Time, hpcData$Sub_metering_1, type = "n", 
     xlab = "", ylab = "Energy sub metering")
points(hpcData$Time, hpcData$Sub_metering_1, type = "l", col = "black")
points(hpcData$Time, hpcData$Sub_metering_2, type = "l", col = "red")
points(hpcData$Time, hpcData$Sub_metering_3, type = "l", col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# save to png using default size of 480 x 480 px
dev.copy(png, file = "plot3.png")
dev.off()
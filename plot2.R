# load the data for 2007-02-1 & 2007-02-02 into hpcData
#source("loadData.R")

# create plot 2
par(cex = 0.8)
plot(hpcData$Time, hpcData$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")

# save to png using default size of 480 x 480 px
dev.copy(png, file = "plot2.png")
dev.off()
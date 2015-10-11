# load the data for 2007-02-1 & 2007-02-02 into hpcData
#source("loadData.R")

# create plot 1
par(cex = 0.8)
hist(hpcData$Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# save to png using default size of 480 x 480 px
dev.copy(png, file = "plot1.png")
dev.off()

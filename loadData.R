# load chron library for times()
library(chron)

# define custom to() classes
setClass("hpcDate")
setClass("hpcTime")

# define to() conversion functions
setAs("character", "hpcDate", function(from) as.Date(from, format = "%d/%m/%Y"))
setAs("character", "hpcTime", function(from) times(from))

# specify data column classes
classes <- c("hpcDate", "hpcTime", rep("numeric", 7))

# load data and subset to the dates 2007-02-01 & 2007-02-02
hpcData <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = classes)
hpcData <- subset(hpcData, Date == '2007-02-01' | Date == '2007-02-02')

# convert Time column into POSIXlt Date/Time
hpcData$Time = strptime(paste(hpcData$Date, hpcData$Time), format = "%Y-%m-%d %H:%M:%S")

library(datasets)
powerconsumptionall = read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", na.string="?")
powerconsumption<-powerconsumptionall[with(powerconsumptionall, Date=="1/2/2007"|Date=="2/2/2007"), ]

datetime <- strptime( paste(powerconsumption$Date,powerconsumption$Time), format="%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)

with(powerconsumption, plot (datetime,Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering", col = "black"))
with(powerconsumption, lines (datetime,Sub_metering_2,type = "l", col = "red"))
with(powerconsumption, points (datetime,Sub_metering_3,type = "l", col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()


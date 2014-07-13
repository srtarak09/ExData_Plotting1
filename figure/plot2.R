library(datasets)
powerconsumptionall = read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", na.string="?")
powerconsumption<-powerconsumptionall[with(powerconsumptionall, Date=="1/2/2007"|Date=="2/2/2007"), ]

datetime <- strptime( paste(powerconsumption$Date,powerconsumption$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)

with(powerconsumption, plot(datetime, Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()

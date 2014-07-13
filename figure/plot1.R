library(datasets)
powerconsumptionall = read.table("household_power_consumption.txt", sep=";", header=TRUE)

powerconsumption<-powerconsumptionall[with(powerconsumptionall, Date=="1/2/2007"|Date=="2/2/2007"), ]
powerconsumption$Global_active_power <- as.numeric(levels(powerconsumption$Global_active_power))[powerconsumption$Global_active_power]
png("plot1.png", width=480, height=480)
hist(powerconsumption$Global_active_power, main="Global Active Power", xlab = "Global Active Power (killowatts)", ylab = "Frequency", col = "red")
dev.off()

#plot4.R

#Load function from ExtractData.R
source("ExtractData.R")

#get data
print("Loading data...")
dat <- extractData("household_power_consumption.txt")

print("Begin draw graph")

#set graphic device
png(filename = "plot4.png" , width = 480, height = 480, units = "px")

#layout for device
par(mfrow= c(2,2))

# draw graph at row 1 col 1
plot(dat$DT, dat$Global_active_power, type="l",  xlab="", ylab="Global Active Power")

# draw graph at row 1 col 2
plot(dat$DT, dat$Voltage, type="l", xlab="datetime", ylab="Voltage")

# draw graph at row 2 col 1
#   (the same with plot 3, but remove border of legend)
plot(dat$DT,dat$Sub_metering_1,type="l",col="black",main="",xlab="",ylab="Energy sub metering")
lines(dat$DT, dat$Sub_metering_2, col="red")
lines(dat$DT, dat$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"),legend= c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),bty="n", lty=1)


# draw graph at row 2 col 2
plot(dat$DT, dat$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power")

#done
dev.off()

print("Graph have been exported to plot4.png")
print("Completed!")


#plot3.R

#Load function from ExtractData.R
source("ExtractData.R")

#get data
print("Loading data...")
dat <- extractData("household_power_consumption.txt")

print("Begin draw graph")

#set graphic device
png(filename = "plot3.png" , width = 480, height = 480, units = "px")

#draw chart
plot(dat$DT,dat$Sub_metering_1,type="l",col="black",main="",xlab="",ylab="Energy sub metering")


lines(dat$DT, dat$Sub_metering_2, col="red")
lines(dat$DT, dat$Sub_metering_3, col="blue")

#set legend
legend("topright",col=c("black", "red", "blue"),legend= c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1)


#done
dev.off()

print("Graph have been exported to plot3.png")
print("Completed!")
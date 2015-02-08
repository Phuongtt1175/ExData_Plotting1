#plot2.R

#Load function from ExtractData.R
source("ExtractData.R")

#get data
print("Loading data...")
dat <- extractData("household_power_consumption.txt")

print("Begin draw graph")
#set graphic device
png(filename = "plot2.png" , width = 480, height = 480, units = "px")

#draw chart
plot(dat$DT,dat$Global_active_power,type="l",main="",xlab="",ylab="Global Active Power (kilowatts)")

#done
dev.off()

print("Graph have been exported to plot2.png")
print("Completed!")
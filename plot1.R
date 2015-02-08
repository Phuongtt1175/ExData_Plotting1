#plot1.R

#Load function from ExtractData.R
source("ExtractData.R")

#get data

print("Loading data...")
dat <- extractData("household_power_consumption.txt")


print("Begin draw graph")
#set graphic device
png(filename = "plot1.png" , width = 480, height = 480, units = "px")

#draw histogram
hist(dat$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#done
dev.off()

print("Graph have been exported to plot1.png")
print("Completed!")
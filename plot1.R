#plot1.R

#function to extract data from file
extractData <- function(filename = "household_power_consumption.txt")
{
  #Load necessary  library
  library(data.table)
  
  #Read file to memory
  columnClasses=c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric')
  dat <- read.table(filename,sep=";",header=TRUE,colClasses=columnClasses,na.strings="?")
  
  
  
  #Convert variable Date to Date class
  dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
  
  #create datetime variable
  
  dat$DT <- paste(dat$Date,dat$Time)
  dat$DT <- strptime(dat$DT,format ="%Y-%m-%d %H:%M:%S")
  
  
  #keep only data of 2 day 2007-02-01 and 2007-02-02
  dat <- dat[dat$Date >= "2007-02-01" & dat$Date <= "2007-02-02",]
  
  #return extract and cleaned data
  dat
  
  
}


####################################
#               PLOT               #
####################################


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
source('init.R')

png("plot4.png")
par(mfrow=c(2,2))
#First plot
with(data,plot(datetime,Global_active_power, type='l', 
               xlab="", ylab="Global Active Power (kilowatts)"))
#Second plot
with(data,plot(datetime,Voltage, type='l'))
#Third plot
with(data, plot(datetime, Sub_metering_1, type='l', 
                xlab="", ylab="Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, col=2))
with(data, lines(datetime, Sub_metering_3, col=3))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=1:3,lty=1)
#Fourth plot
with(data,plot(datetime, Global_reactive_power, type='l'))
dev.off()

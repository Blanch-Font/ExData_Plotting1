source('init.R')

png("plot3.png")
with(data, plot(datetime, Sub_metering_1, type='l', 
                xlab="", ylab="Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, col=2))
with(data, lines(datetime, Sub_metering_3, col=3))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=1:3,lty=1)
dev.off()
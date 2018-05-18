

library(readr)

hpc <- read_delim("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time()
),
delim = ";", 
locale = locale("en"))

hpc2 <-subset( hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

hpc2$DateTime <- as.POSIXct(paste(hpc2$Date, hpc2$Time))



plot(hpc2$Sub_metering_1~hpc2$DateTime, type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(hpc2$Sub_metering_2~hpc2$DateTime, col="red")
lines(hpc2$Sub_metering_3~hpc2$DateTime, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()


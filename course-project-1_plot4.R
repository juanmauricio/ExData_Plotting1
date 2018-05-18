

library(readr)

hpc <- read_delim("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time()
),
delim = ";", 
locale = locale("en"))

hpc2 <-subset( hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

hpc2$DateTime <- as.POSIXct(paste(hpc2$Date, hpc2$Time))

par(mfrow = c(2,2))

plot(hpc2$Global_active_power~hpc2$DateTime, type="l",ylab="Global Active Power",xlab=NA,col="black")
plot(hpc2$Voltage~hpc2$DateTime, type="l",ylab="Voltage",xlab="datetime",col="black")

plot(hpc2$Sub_metering_1~hpc2$DateTime, type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(hpc2$Sub_metering_2~hpc2$DateTime, col="red")
lines(hpc2$Sub_metering_3~hpc2$DateTime, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(hpc2$Global_reactive_power~hpc2$DateTime, type="l",ylab="Voltage",xlab="datetime",col="black")

dev.copy(png, file = "plot4.png")
dev.off()


library(readr)

hpc <- read_delim("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time()
),
delim = ";", 
locale = locale("en"))

hpc2 <-subset( hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

hist(hpc2$Global_active_power, col = "green", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot1.png")

dev.off()
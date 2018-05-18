

library(readr)

hpc <- read_delim("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time()
),
delim = ";", 
locale = locale("en"))

hpc2 <-subset( hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))



hpc2$DateTime <- as.POSIXct(paste(hpc2$Date, hpc2$Time))

plot(hpc2$Global_active_power~hpc2$Time)
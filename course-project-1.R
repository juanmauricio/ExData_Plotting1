hpc <- read_csv2("household_power_consumption.txt", n_max=10)


hpc <- read_csv2("household_power_consumption.txt", col_types = cols(
   		Date = col_date(),
		Time = "T",
		Global_active_power = "n",
		Global_reactive_power = "d" ,
		Voltage = "d",
		Global_intensity = "d",
		Sub_metering_1 = "d",
		Sub_metering_2 = "d",
		Sub_metering_3 = "d"
	),
	n_max = 10
)



hpc <- read_csv2("household_power_consumption.txt", col_types = cols(
   		"Date" = col_date("%d/%m/%Y"),
		"Time" = col_time(),
		"Global_active_power" = "d",
		"Global_reactive_power" = "d" ,
		"Voltage" = "d",
		"Global_intensity" = "d",
		"Sub_metering_1" = "d",
		"Sub_metering_2" = "d",
		"Sub_metering_3" = "d"
	),
	n_max = 10,

)

locale(decimal_mark = ".", grouping_mark = ",")


hpc <- spec_csv("household_power_consumption.txt")
hp

hpc <- read_csv("household_power_consumption.txt", col_names = cols(
   		"Date" = col_date(),
		"Time",
		"Global_active_power",
		"Global_reactive_power",
		"Voltage",
		"Global_intensity",
		"Sub_metering_1",
		"Sub_metering_2",
		"Sub_metering_3"
), n_max = 10)


hpc <- read_csv2("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time(),
"Global_active_power" = col_double()
), 
locale = locale("en"),
n_max = 10)
 


hpc <- read_csv(readr_example("household_power_consumption.txt"), n_max = 10)

hpc <- read_csv("household_power_consumption.txt", n_max = 10)


locale(date_names = "en", date_format = "%AD", time_format = "%AT",
decimal_mark = ".", grouping_mark = ",", tz = "UTC",
encoding = "UTF-8", asciify = FALSE)


hpc <- read_delim("household_power_consumption.txt", col_types = cols(
"Date" = col_date("%d/%m/%Y"), 
"Time" = col_time()
),
delim = ";", 
locale = locale("en"))


hpc2 <-subset( hpc, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))head(hpc2)

hist(hpc2$Global_active_power, col = "green")




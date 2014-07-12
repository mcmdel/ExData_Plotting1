# declare function
source(".//ExData_Plotting1//loadData.R")

df <- loadData()

# define locale
curLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English_United States.1252")

# creating plot 2
with(df,plot(datetime,Global_active_power,type="l",ylab = "Global Active Power (kilowatts)",xlab=" "))

# creating png plot 2
dev.copy(png,file=".//ExData_Plotting1//Plot2.png",width = 480, height = 480)
dev.off()

#restore locale
Sys.setlocale("LC_TIME",curLocale)

#removing objects
remove(df)

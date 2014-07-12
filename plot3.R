# declare function
source(".//ExData_Plotting1//loadData.R")

df <- loadData()

# define locale
curLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English_United States.1252")

# creating plot 3
par()
with(df,plot(datetime,Sub_metering_1,type="l",ylab = "Energy sub metering",xlab=" "))

with(df,points(datetime,Sub_metering_2,type="l",col="red"))
with(df,points(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col= c("black","red","blue"))

# creating png plot 3 - I'm using 800 x 600 for best visualization
dev.copy(png,file=".//ExData_Plotting1//Plot3.png",width = 800, height = 600)
dev.off()

#restore locale
Sys.setlocale("LC_TIME",curLocale)

#removing objects
remove(df)

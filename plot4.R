# declare function
source(".//ExData_Plotting1//loadData.R")

df <- loadData()

# define locale
curLocale <- Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME","English_United States.1252")

# define plot area
curmfrow <- par()$mfrow

par(mfrow=c(2,2))

# creating plot 4

# graphic 1
with(df,plot(datetime,Global_active_power,type="l",ylab = "Global Active Power",xlab=" "))

# graphic 2
with(df,plot(datetime,Voltage,type="l"))

# graphic 3
with(df,plot(datetime,Sub_metering_1,type="l",ylab = "Energy sub metering",xlab=" "))

with(df,points(datetime,Sub_metering_2,type="l",col="red"))
with(df,points(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col= c("black","red","blue"),box.col="white", inset=.02)

# graphic 4
with(df,plot(datetime,Global_reactive_power,type="l"))

# creating png plot 4 - I'm using 800 x 600 for best visualization
dev.copy(png,file=".//ExData_Plotting1//Plot4.png",width = 800, height = 600)
dev.off()

#restore locale / plot area
Sys.setlocale("LC_TIME",curLocale)

par(mfrow=curmfrow)

#removing objects
remove(df)

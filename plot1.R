# declare function
source(".//ExData_Plotting1//loadData.R")

df <- loadData()

# creating plot 1
with(df,hist(Global_active_power,main="Global Active Power",xlab = "Global Active Power (kilowatts)",col="red"))

# creating png plot 1
dev.copy(png,file=".//ExData_Plotting1//Plot1.png",width = 480, height = 480)
dev.off()

#removing objects
remove(df)

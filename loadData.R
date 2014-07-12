# loading librarys
loadData = function() {
  library(sqldf)
  
  # Download data
  if (!file.exists(".//ExData_Plotting1")) {dir.create(".//ExData_Plotting1")}
  
  if(!file.exists(".//ExData_Plotting1//household_power_consumption.zip"))
  {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile=".//ExData_Plotting1//household_power_consumption.zip")  
  }
  
  # unzip data
  uncompress <- !file.exists(".//ExData_Plotting1//household_power_consumption.txt")
  
  if(uncompress) {unzip(".//ExData_Plotting1//household_power_consumption.zip",exdir=".//ExData_Plotting1")}
  
  # Loading data
  dframe <- read.csv.sql(".//ExData_Plotting1//household_power_consumption.txt",sql="select * from file where Date = '1/2/2007' or Date = '2/2/2007'", sep=";")
  
  # close an old connection if it exists
  if (!is.null(getOption("sqldf.connection"))){
    sqldf()
  }
  
  # create column for DateTime
  dframe$datetime <- strptime(paste(dframe$Date,dframe$Time), "%d/%m/%Y %H:%M:%S")
  
  dframe
 }

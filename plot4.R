plot4<-function(f="household_power_consumption.csv") {
      
      consumption<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
      consumption$Date<- strptime(paste(consumption$Date,consumption$Time), "%d/%m/%Y %H:%M:%S")
      
      consump<-consumption[consumption$Date>='2007-02-01' & consumption$Date<'2007-02-03 00:00:00 EST', ]
      consump$Global_active_power<-as.numeric(consump$Global_active_power)
      
      png("plot4.png", width = 480, height = 480)
      par(mfrow=c(2,2))
      
      with(consump, {
      
            plot(consump$Date, consump$Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", type = "l")
            plot(consump$Date, consump$Voltage,xlab="datatime",ylab="voltage")
            plot(consump$Date, consump$Sub_metering_1, col="black", xlab="", ylab="Energy sub metering",type = "l")    
            lines(consump$Date, consump$Sub_metering_2, col="red")
            lines(consump$Date, consump$Sub_metering_3, col="blue")
            plot(consump$Date,consump$Global_reactive_power,xlab="datatime",ylab="Global_reactive_power",type ="l")
      })
     
      dev.off()
      
}
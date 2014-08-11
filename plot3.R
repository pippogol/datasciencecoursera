plot3<-function(f="household_power_consumption.csv") {
      
      consumption<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
      consumption$Date<- strptime(paste(consumption$Date,consumption$Time), "%d/%m/%Y %H:%M:%S")
      
      consump<-consumption[consumption$Date>='2007-02-01' & consumption$Date<'2007-02-03 00:00:00 EST', ]
      consump$Global_active_power<-as.numeric(consump$Global_active_power)
      
      png("plot3.png", width = 480, height = 480)
      with(consump, {
            plot(consump$Date, consump$Sub_metering_1, col="black", xlab="", ylab="Energy sub metering",type = "l")    
            
            lines(consump$Date, consump$Sub_metering_2, col="red")
            lines(consump$Date, consump$Sub_metering_3, col="blue")
            
      })
      legend("topright", pch = 1, col = c("blue", "red", "green"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
      
      dev.off()
      
}
plot2<-function(f="household_power_consumption.csv") {
      
      consumption<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
      consumption$Date<- strptime(paste(consumption$Date,consumption$Time), "%d/%m/%Y %H:%M:%S")
      
      consump<-consumption[consumption$Date>='2007-02-01' & consumption$Date<'2007-02-03 00:00:00 EST', ]
      consump$Global_active_power<-as.numeric(consump$Global_active_power)
      
      png("plot2.png", width = 480, height = 480)
      with(consump, {
            plot(consump$Date, consump$Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", type = "l")
            
      })
      dev.off()
      
}
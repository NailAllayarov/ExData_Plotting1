# plot 4

setwd("/Users/Nael/Desktop/Coursera/Exploratory data analysis/Week 1")
my_data<-read.table("household_power_consumption.txt", sep=";", header = TRUE)
my_data2<-my_data[my_data[,1]=="1/2/2007" | my_data[,1]=="2/2/2007",]
my_data2[,1]<-as.Date(my_data2[,1], "%d/%m/%Y")
datetime<-as.POSIXct(paste(my_data2[,1], my_data2[,2]), format="%Y-%m-%d %H:%M:%S")

par(mfrow=c(2,2))

#subplot 1
my_data2[,3]<-as.numeric(levels(my_data2[,3]))[my_data2[,3]]
plot(datetime, my_data2[,3], type="l", ylab = "Global Active Power", xlab="")
#subplot 2
my_data2[,5]<-as.numeric(levels(my_data2[,5]))[my_data2[,5]]
plot(datetime, my_data2[,5], type="l", ylab = "Voltage", xlab="datetime")
#subplot 3
my_data2[,7]<-as.numeric(levels(my_data2[,7]))[my_data2[,7]]
my_data2[,8]<-as.numeric(levels(my_data2[,8]))[my_data2[,8]]
my_data2[,9]<-as.numeric(levels(my_data2[,9]))[my_data2[,9]]
plot(datetime, my_data2[,7], type="l", ylab = "Energy sub metering", xlab="", col="black")
lines(datetime, my_data2[,8], type="l", ylab = "Energy sub metering", xlab="", col="red")
lines(datetime, my_data2[,9], type="l", ylab = "Energy sub metering", xlab="", col="blue")
#subplot 4
my_data2[,4]<-as.numeric(levels(my_data2[,4]))[my_data2[,4]]
plot(datetime, my_data2[,4], type="l", ylab = "Global_reactive_power", xlab="datetime")

#dev.copy(png, "plot4.png")
#dev.off()
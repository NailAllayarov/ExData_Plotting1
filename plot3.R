# plot 3

setwd("/Users/Nael/Desktop/Coursera/Exploratory data analysis/Week 1")
my_data<-read.table("household_power_consumption.txt", sep=";", header = TRUE)
my_data2<-my_data[my_data[,1]=="1/2/2007" | my_data[,1]=="2/2/2007",]
my_data2[,1]<-as.Date(my_data2[,1], "%d/%m/%Y")
datetime<-as.POSIXct(paste(my_data2[,1], my_data2[,2]), format="%Y-%m-%d %H:%M:%S")

my_data2[,7]<-as.numeric(levels(my_data2[,7]))[my_data2[,7]]
my_data2[,8]<-as.numeric(levels(my_data2[,8]))[my_data2[,8]]
my_data2[,9]<-as.numeric(levels(my_data2[,9]))[my_data2[,9]]
plot(datetime, my_data2[,7], type="l", ylab = "Energy sub metering", xlab="", col="black")
lines(datetime, my_data2[,8], type="l", ylab = "Energy sub metering", xlab="", col="red")
lines(datetime, my_data2[,9], type="l", ylab = "Energy sub metering", xlab="", col="blue")
#dev.copy(png, "plot3.png")
#dev.off()

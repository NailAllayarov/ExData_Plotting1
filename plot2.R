# plot 2
setwd("/Users/Nael/Desktop/Coursera/Exploratory data analysis/Week 1")
my_data<-read.table("household_power_consumption.txt", sep=";", header = TRUE)
my_data2<-my_data[my_data[,1]=="1/2/2007" | my_data[,1]=="2/2/2007",]
my_data2[,1]<-as.Date(my_data2[,1], "%d/%m/%Y")
datetime<-as.POSIXct(paste(my_data2[,1], my_data2[,2]), format="%Y-%m-%d %H:%M:%S")
my_data2[,3]<-as.numeric(levels(my_data2[,3]))[my_data2[,3]]
plot(datetime, my_data2[,3], type="l", ylab = "Global Active Power (kilowatts)", xlab="")
#dev.copy(png, "plot2.png")
#dev.off()

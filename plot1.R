# plot 1
setwd("/Users/Nael/Desktop/Coursera/Exploratory data analysis/Week 1")
my_data<-read.table("household_power_consumption.txt", sep=";", header = TRUE)
my_data2<-my_data[my_data[,1]=="1/2/2007" | my_data[,1]=="2/2/2007",]
my_data2[,1]<-as.Date(my_data2[,1], "%d/%m/%Y")
my_data2[,3]<-as.numeric(levels(my_data2[,3]))[my_data2[,3]]
hist(as.numeric(my_data2[,3]), col = "red", main="Global Active Power", xlab = "Global active power (kilowatts)")
#dev.copy(png, "plot1.png")
#dev.off()

data <- read.table("C:/Users/asus/Downloads/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
partialData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
gAP <- as.numeric(partialData$Global_active_power)
png("plot1.png",width=480, height=480)
hist(gAP,col="red",main="Global Active Power", xlab="Global Active Power (KWatt)")
dev.off()

# Load the data as needed.
source("getData.R")

# Establish a PNG device with the right sizes and name.
png(file="plot3.png", width=480, height=480)

# Prep an empty canvas.
plot(rep(data_table$DateTime, 3),  # x-axis variable.
     c(data_table$Sub_metering_1,  # y-axis variable.
       data_table$Sub_metering_2,
       data_table$Sub_metering_3),
     type="n",  # For no plotting.
     xlab="",  # No x-axis label.
     ylab="Energy sub metering")  # y-axis label.

# Generate the legend.
legend("topright",
       pch="_",
       col=c("black", "red", "blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot lines for each submeter.
lines(data_table$DateTime, data_table$Sub_metering_1, col="black")
lines(data_table$DateTime, data_table$Sub_metering_2, col="red")
lines(data_table$DateTime, data_table$Sub_metering_3, col="blue")

# Write the figure to the PNG.
dev.off()

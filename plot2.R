# Load the data as needed.
source("getData.R")

# Establish a PNG device with the right sizes and name.
png(file="plot2.png", width=480, height=480)

# Line graph of Global Active Power over two days.
plot(data_table$DateTime,  # x-axis variable.
     data_table$Global_active_power,  # y-axis variable.
     type="l",  # Draw a line graph.
     xlab="",  # No x-axis label.
     ylab="Global Active Power (kilowatts)")  # y-axis label.

# Write the figure to the PNG.
dev.off()

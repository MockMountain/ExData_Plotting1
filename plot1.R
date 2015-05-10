# Load the data as needed.
source("getData.R")

# Establish a PNG device with the right sizes and name.
png(file="plot1.png", width=480, height=480)

# Histogram over Global Active Power.
hist(data_table$Global_active_power,
     col="red",  # Make the data points red, like the example.
     xlab="Global Active Power (kilowatts)",  # x-axis label.
     main="Global Active Power")  # Give the figure a title.

# Write the figure to the PNG.
dev.off()

# Alternatively, saving the plot after it's already been made:
#dev.copy(png, width=480, height=480, file="plot1.png")
#dev.off()

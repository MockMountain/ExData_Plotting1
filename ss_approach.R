library(sqldf)

# An alternate data read in approach for the memory constrained.
d1 <- read.csv.sql("./data/household_power_consumption.txt",
                   sep=";",
                   sql = "select * from file where Date='1/2/2007'")
d2 <- read.csv.sql("./data/household_power_consumption.txt",
                   sep=";",
                   sql = "select * from file where Date='2/2/2007'")
data_table <- rbind(d1, d2)

# Still needs to be cleaned up.
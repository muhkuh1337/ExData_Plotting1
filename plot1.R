library(graphics) 
library(grDevices)

data <- readRDS(file = 'data/data_twodays.RData')

png(filename = 'plot1.png',
    width    = 480,
    height   = 480,
    bg = 'transparent')

with(data, hist(Global_active_power, 
                col = 'red', 
                main = 'Global Active Power', 
                xlab = 'Global Active Power (kilowatts)'))

dev.off()
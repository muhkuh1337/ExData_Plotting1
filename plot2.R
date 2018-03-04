library(graphics) 
library(grDevices)

Sys.setlocale("LC_TIME", "English") # only works for Windows.


data <- readRDS(file = 'data/data_twodays.RData')


png(filename = 'plot2.png',
    width    = 480,
    height   = 480,
    bg = 'transparent')


with(data, plot(DateTime,
                Global_active_power,
                xlab = "",
                ylab = "Global Active Power (kilowatts)",
                type = 'l'))

dev.off()
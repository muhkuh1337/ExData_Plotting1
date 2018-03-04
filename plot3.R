library(graphics) 
library(grDevices)

Sys.setlocale("LC_TIME", "English") # only works for Windows.


data <- readRDS(file = 'data/data_twodays.RData')


png(filename = 'plot3.png',
    width    = 480,
    height   = 480,
    bg = 'transparent')


with(data, plot(DateTime,
                Sub_metering_1,
                xlab = "",
                ylab = "Energy sub metering",
                type = 'l',
                col = 'black'))
with(data, lines(DateTime,
                Sub_metering_2,
                type = 'l',
                col = 'red'))
with(data, lines(DateTime,
                 Sub_metering_3,
                 type = 'l',
                 col = 'blue'))
legend(x = 'topright',
       lty = c(1, 1),
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bg = 'transparent')

dev.off()
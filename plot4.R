library(graphics) 
library(grDevices)

Sys.setlocale("LC_TIME", "English") # only works for Windows.


data <- readRDS(file = 'data/data_twodays.RData')

png(filename = 'plot4.png',
    width    = 480,
    height   = 480,
    bg = 'transparent')

par(mfrow = c(2, 2))

# subplot 1
with(data, plot(DateTime,
                Global_active_power,
                xlab = "",
                ylab = "Global Active Power",
                type = 'l'))

# subplot 2
with(data, plot(DateTime, 
                Voltage, 
                xlab = 'datetime',
                type = 'l'))

# subplot 3
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
       bg = 'transparent',
       box.col = 'transparent')

# subplot 4
with(data, plot(DateTime,
                Global_reactive_power,
                xlab = "datetime",
                type = 'l'))

dev.off()
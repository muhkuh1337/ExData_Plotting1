library(data.table)

## read and clean data
data <- data.table::fread('data/household_power_consumption.txt')
data[, DateTime := as.POSIXct(paste(data$Date, data$Time, sep = ' '), format = '%d/%m/%Y %H:%M:%S')]
data[, Date := NULL]
data[, Time := NULL]
NumericCols <- setdiff(colnames(data), c("DateTime"))
data[, (NumericCols) := lapply(.SD, as.numeric), .SDcols = NumericCols]

# subset to [2017-02-01, 2017-02-02]
saveRDS(data[DateTime >= as.POSIXct('2007-02-01') & DateTime < as.POSIXct('2007-02-03'), ], file = 'data/data_twodays.RData')
library(Quandl)  # for retrieving data from Quandl
library(quantmod) # for creating a candlestick chart

# Retrieve historical Tokyo Stock Exchange (TSE) price data for GungHo
# using Quandl, which yields a data frame
stockData <- Quandl("TSE/3765", trim_start="2012-08-23", 
                    trim_end="2014-12-05", authcode="sBKxZWxdnxH6dsgUeZCv")

# create new data frame containing the date range you seek to chart
start_date <- "2013-08-01"
dfGungho <- stockData[stockData1$Date >= start_date,]
# convert from data frame to zoo class (req'd by quantmod's chartSeries)
GungHo <- read.zoo(dfGungho)
# create candlestick chart with white background
chartSeries(GungHo, theme="white")
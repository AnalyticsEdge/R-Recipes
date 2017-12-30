# Making a subset of data that has missing values:
flights_na <- subset(flights,is.na(flights)> 0)

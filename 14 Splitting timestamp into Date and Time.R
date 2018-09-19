
# splitting timestamp into date and time
dput_op$date <- as.Date(dput_op$timestamp)
dput_op$time_1 <- format(as.POSIXct(dput_op$timestamp) ,format = "%H:%M:%S") 
dput_op$hour = format(as.POSIXct(dput_op$time_1,format="%H:%M:%S"),"%H")

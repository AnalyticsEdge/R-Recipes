#Simple version
colSums(is.na(flights)> 0)              

#Sorting columns on highest number of NA
sort(colSums(is.na(flights)> 0), decreasing = T)

#Using sapply function
sapply(flights, function(x) sum(is.na(x)))

#Using apply function
apply(is.na(flights),2,sum)

#Getting only the columns that have NAs
flights_NA_cols <- sapply(flights, function(x) sum(is.na(x))) 
flights_NA_cols[flights_NA_cols>0]

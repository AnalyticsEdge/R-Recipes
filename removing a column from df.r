# Method 1
to.remove <- c('column1', 'column2') 
df <- df[, !colnames(df) %in% to.remove] 

# Method 2
colnames(df) <- c("column1","column2", "column3", "column4")
df$column1 <- NULL

# Method 3
df = subset(data, select = -c(ColToRemove))

# Method 4
cols.dont.want <- "genome"
cols.dont.want <- c("genome", "region")      # if you want to remove multiple columns
data <- data[, ! names(data) %in% cols.dont.want, drop = F]

# Method 5
data <- subset(data, select = -a )
data <- subset(data, select = -c(d, b ))  # if you want to remove multiple columns

# Method 6
df <- df[,-grep("ColToRemove",colnames(X))]

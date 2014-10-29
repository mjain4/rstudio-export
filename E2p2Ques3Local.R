library(RCurl)
read_url <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
temporaryFile <- tempfile()
con <- file(temporaryFile, open = "w")
cat(read_url, file = con) 
close(con)
data <- read.csv(temporaryFile)

head(data)
summary(data)
str(data)
data$Date<-as.Date(as.character(data$Date))
data$Steps<-as.numeric(as.factor(data$Steps))
data$Miles<-as.numeric(as.character(data$Miles))
str(data)

plot(x=data$Miles,y=data$Steps, xlab = "Miles", ylab = "Steps",)


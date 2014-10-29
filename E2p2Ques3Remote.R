library(RCurl)
read_url <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
temporaryFile <- tempfile()
con <- file(temporaryFile, open = "w")
cat(read_url, file = con) 
close(con)
data <- read.csv(temporaryFile)
data$Date<-as.Date(as.character(data$Date))
data$Steps<-as.numeric(as.factor(data$Steps))
data$Miles<-as.numeric(as.character(data$Miles))


plot(x=data$Steps,y=data$Miles, xlab = "Steps",ylab = "Miles",)



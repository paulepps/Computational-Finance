# econ424lab1.r

# set output options to show only 4 significant digits
options(digits = 4)

#
# see README file for instructions on how to obtain the sbuxPrices.csv file.
#

# change the path to the location of your data file
setwd("C:/your/directory/path")
sbux.df = read.csv(file="sbuxPrices.csv", 
                   header=TRUE, stringsAsFactors=FALSE)

#
# plot the data
#

# the default plot is a "points" plot
plot(sbux.df$Adj.Close)

# let's make a better plot
# type="l" specifies a line plot
# col="blue" specifies blue line color
# lwd=2 doubles the line thickness
# ylab="Adjusted close" adds a y axis label
# main="Monthly closing price of SBUX" adds a title
plot(sbux.df$Adj.Close, type="l", col="blue", 
     lwd=2, ylab="Adjusted close",
     main="Monthly closing price of SBUX")

# now add a legend
legend(x="topleft", legend="SBUX", 
       lty=1, lwd=2, col="blue")

#
# compute returns
#

# simple 1-month returns
n = nrow(sbuxPrices.df)
sbux.ret = (sbuxPrices.df[2:n,1] - sbuxPrices.df[1:(n-1),1])/sbuxPrices.df[1:(n-1),1]

# now add dates as names to the vector. 
names(sbux.ret) = rownames(sbuxPrices.df)[2:n]
head(sbux.ret)

# Note: to ensure that sbux.ret is a data.frame use drop=FALSE when computing returns
sbux.ret.df = (sbuxPrices.df[2:n,1,drop=FALSE] - sbuxPrices.df[1:(n-1),1,drop=FALSE])/sbuxPrices.df[1:(n-1),1,drop=FALSE]

# continuously compounded 1-month returns
sbux.ccret = log(1 + sbux.ret)

# alternatively
sbux.ccret = log(sbuxPrices.df[2:n,1]) - log(sbuxPrices.df[1:(n-1),1])
names(sbux.ccret) = rownames(sbuxPrices.df)[2:n]
head(sbux.ccret)

# compare the simple and cc returns
head(cbind(sbux.ret, sbux.ccret))

# plot the simple and cc returns in separate graphs
# split screen into 2 rows and 1 column
par(mfrow=c(2,1))

# plot simple returns first
plot(sbux.ret, type="l", col="blue", lwd=2, ylab="Return",
     main="Monthly Simple Returns on SBUX")
abline(h=0)     

# next plot the cc returns
plot(sbux.ccret, type="l", col="blue", lwd=2, ylab="Return",
     main="Monthly Continuously Compounded Returns on SBUX")
abline(h=0)     

# reset the screen to 1 row and 1 column
par(mfrow=c(1,1))     

# plot the returns on the same graph
plot(sbux.ret, type="l", col="blue", lwd=2, ylab="Return",
     main="Monthly Returns on SBUX")

# add horizontal line at zero
abline(h=0)     

# add the cc returns
lines(sbux.ccret, col="red", lwd=2)

# add a legend
legend(x="bottomright", legend=c("Simple", "CC"), 
       lty=1, lwd=2, col=c("blue","red"))

#
# calculate growth of $1 invested in SBUX
#

# compute gross returns
sbux.gret = 1 + sbux.ret
# compute future values
sbux.fv = cumprod(sbux.gret)
plot(sbux.fv, type="l", col="blue", lwd=2, ylab="Dollars", 
     main="FV of $1 invested in SBUX")
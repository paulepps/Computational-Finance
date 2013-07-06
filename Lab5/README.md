# Computational Finance #
## Lab 5 ##

In this lab, you will analyze continuously compounded monthly return data on the Vanguard long term bond index fund (VBLTX), Fidelity Magellan stock mutual fund (FMAGX), and Starbucks stock (SBUX).

**I. Univariate Graphical Analysis**

1) Make time plots of the return data using the R command plot(). Think about any relationships between the returns suggested by the plots. Pay particular attention to the behavior of returns toward the end of 2008 at the beginning of the financial crisis.

2) Make a cumulative return plot (future of $1 invested in each asset). Which assets gave the best and worst future values over the investment horizon?

3) For each return series, make a four panel plot containing a histogram, density plot, boxplot and normal QQ-plot. Do the return series look normally distributed?

**II. Univariate Numerical Summary Statistics**

1) Compute numerical descriptive statistics for all assets using the R functions summary(), mean(), var(), stdev(), skewness() (in package PerformanceAnalytics) and kurtosis() (in package PerformanceAnalytics). Which asset appears to be the riskiest asset?

2) Using the mean monthly return for each asset, compute an estimate of the annual continuously compounded return (i.e., recall the relationship between the expected monthly cc return and the expected annual cc return). Convert this annual continuously compounded return into a simple annual return. Are there any surprises?

3) Using the estimate of the monthly return standard deviation for each asset, compute an estimate of the annual return standard deviation.

**III. Bivariate Graphical Analysis**

Use the R pairs() function to create all pair-wise scatterplots of returns.

**IV. Bivariate Numerical Summary Statistics**

Use the R functions var() and cor() to compute the sample covariance matrix and sample correlation matrix of the returns.

**V. Time Series Summary Statistics**

Use the R function acf() to compute and plot the sample autocorrelation functions of each return. Do the returns appear to be uncorrelated over time?
# Computational Finance #
## Lab 3 ##

Bivariate distributions

a) Consider the MA(1) model: 

{$$}
Yi=0.05+ϵt+θϵt−1,|θ|<1ϵt∼ iid N(0,(0.10)2)
{/$$}

Using the R function arima.sim(), simulate and plot 250 observations of the MA(1) with θ=0.5,0.9.

Using the R function arima.sim, simulate and plot 250 observations of the AR(1) with /phi=0.5,0.9.

b) Now consider the AR(1) model: 
Y−0.05=ϕ(Yt−1−0.05)+ϵt,|ϕ|<1ϵt∼ iid N(0,(0.10)2)
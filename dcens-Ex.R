pkgname <- "dcens"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('dcens')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("dcens")
### * dcens

flush(stderr()); flush(stdout())

### Name: dcens
### Title: Estimate ST, SL and SR survival functions from doubly censored
###   data
### Aliases: dcens print.dcens

### ** Examples


# Example with real data (transformation to years)
data(IVaids)
dc <- with(IVaids,dcens(t/365,d))
dc

# Plot of the ST survival funcion
plot(dc,fun="ST",xlab="t (years)")

# Plot of the SL survival funcion
plot(dc,fun="SL",xlab="t (years)")

# Plot of the SR survival funcion
plot(dc,fun="SR",xlab="t (years)")

	 
## A fictitious example
t <- c(4,3,1,6,2,5,2,7,3,1,5)
d <- c(-1,0,0,1,1,0,1,-1,-1,-1,0)

# Quantiles we are interested to study
quantilesST <- c(0.25,0.5,0.75)
quantilesSL <- c(0.2,0.4)
quantilesSR <- c(0.6,0.8)

dc <- dcens(t,d,quantilesST,quantilesSL,quantilesSR)
dc




### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')

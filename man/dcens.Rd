\name{dcens}
\alias{dcens}
\alias{print.dcens}

\title{
Estimate ST, SL and SR survival functions from doubly censored data
}

\description{
This function returns estimated quantiles for \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} survival functions from doubly censored data. 
It also computes their standard errors by bootstrap. The quantiles to compute are 0.25, 0.5 and 0.75 
for the three survival functions by default, but any other quantiles are accepted for any of them.
The algorithm removes times at the beginning that are right censored and those at the end that are left 
censored. After that, at least two different times are necessary to estimate the survival functions.
}

\usage{
dcens(t, d, quantilesST = c(0.25, 0.5, 0.75),
            quantilesSL = c(0.25, 0.5, 0.75),
            quantilesSR = c(0.25, 0.5, 0.75), nboot = 500)
			
\method{print}{dcens}(x, \dots)
}

\arguments{
  \item{t}{
		A vector of length n of survival times (ties permitted).
}
  \item{d}{
		A vector of length n of censoring indicators (0 = exact data, -1 = left censored, 1 = right censored).
}
  \item{quantilesST}{
		A vector of probabilities for the \eqn{S_T}{ST} survival function quantiles to be estimated.
}
  \item{quantilesSL}{
		A vector of probabilities for the \eqn{S_L}{SL} survival function quantiles to be estimated.
}
  \item{quantilesSR}{
		A vector of probabilities for the \eqn{S_R}{SR} survival function quantiles to be estimated.
}
  \item{nboot}{		
		Number of bootstrapping samples. Default to 500.
}
  \item{x}{		
		Object of class \code{dcens}.
}
  \item{\dots}{
		Other arguments.
}
}

\value{
An object \code{dcens} which is a list with the following items:
	\item{survs}{a four-column matrix containing the estimated survival functions. The first column has the sorted
				 different times and the second, third and fourth columns have, for each time, the corresponding value 
				 in the \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} estimated survival functions respectively.}
	\item{quantilesST}{a two-column matrix where the first column is a vector of quantiles estimates for the estimated 
					   \eqn{S_T}{ST} survival function and the second one is a vector with the quantiles standard deviations. }
	\item{quantilesSL}{a two-column matrix where the first column is a vector of quantiles estimates for the estimated 
					   \eqn{S_L}{SL} survival function and the second one is a vector with the quantiles standard deviations.}
	\item{quantilesSR}{a two-column matrix where the first column is a vector of quantiles estimates for the estimated 
					   \eqn{S_R}{SR} survival function and the second one is a vector with the quantiles standard deviations.}
	\item{exactData}{proportion of exact data.}
	\item{leftCensored}{proportion of left censored data.}
	\item{rightCensored}{proportion of right censored data.}

}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{plot.dcens}}
}

\examples{

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

}


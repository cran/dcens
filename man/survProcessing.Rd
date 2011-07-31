\name{survProcessing}
\alias{survProcessing}

\title{
	Processing of doubly censored survival times
}

\description{
This function receives some doubly censored survival times with their censoring
indicators and returns these times processed in a better structure in order to estimate
the \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} survival functions.
}
\usage{
	survProcessing(t, d)
}

\arguments{
  \item{t}{
		A vector of length n of survival times (ties permitted).
}
  \item{d}{
		A vector of length n of censoring indicators (0 = exact data, -1 = left censored, 1 = right censored).
}
}

\details{
First of all, times are sorted. Times at the beginning that are right censored and those
at the end that are left censored are removed. For each different time, we count how
many events are observed (d=0), left censored (d=-1) or right censored (d=1).

For the \eqn{S_T}{ST} estimation we will need to add ficticious times at the beginning and/or at
the end if ties occur and some of the events are left censored or right censored
respectively.
}
\value{
A list with the following items:
	\item{n}{number of times after the removing process.}
	\item{times}{a four-column matrix with the different times (O) and the
					number of left censored (M), right censored (L) and observed
					(D) events for each time.}
	\item{timesST}{the same structure as \code{times} but we look whether there is left
					censoring at the beginning or right censoring at the end,
					adding fictitious times in order to estimate \eqn{S_T}{ST} survival function.}
	\item{leftCensoring}{indicator of left censoring at the first time.}
	\item{leftRepeated}{indicator of tie at the first time.}
	\item{rightCensoring}{indicator of right censoring at the last time.}
	\item{rightRepeated}{indicator of tie at the last time.}
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{dcens}}, \code{\link{survivalST}}, \code{\link{survivalSL}}, \code{\link{survivalSR}}
}


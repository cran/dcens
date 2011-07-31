\name{survivalSR}
\alias{survivalSR}

\title{
	Estimate SR survival function
}
\description{
This function estimates the \eqn{S_R}{SR} survival function from doubly censored data. It receives
the processed data returned by \code{survProcessing} function and the estimation of the
\eqn{S_T}{ST} survival function.
}
\usage{
survivalSR(procData, ST)
}

\arguments{
  \item{procData}{
		A list with the processed data returned by the \code{survProcessing} function.
}
  \item{ST}{
		A matrix with the estimation of the \eqn{S_T}{ST} survival function returned by the 
		\code{survivalST} function.
}
}

\value{
A two-column matrix where the first column corresponds to the sorted different times and the second one 
corresponds to the estimated values for the \eqn{S_R}{SR} survival function.   
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{survProcessing}}, \code{\link{survivalST}}
}

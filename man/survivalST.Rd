\name{survivalST}
\alias{survivalST}

\title{
	Estimate ST survival function
}
\description{
This function estimates the \eqn{S_T}{ST} survival function from doubly censored data. 
It receives the processed data returned by \code{survProcessing} function.
The algorithm uses an inverse-probability-of-censoring approach in order to 
obtain the estimations of the \eqn{S_T}{ST} survival function.
}

\usage{
survivalST(procData)
}

\arguments{
  \item{procData}{
		A list with the processed data returned by the \code{survProcessing} function.
}
}

\value{
A two-column matrix where the first column corresponds to the sorted different times 
and the second one corresponds to the estimated values for the \eqn{S_T}{ST} survival function.   
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}


\seealso{
	\code{\link{survProcessing}}
}


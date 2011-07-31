\name{survQuantile}
\alias{survQuantile}

\title{
	Calculate quantiles from a survival function
}
\description{
This function calculates the quantiles from a survival function corresponding to the
given probabilities by using linear interpolation as a continuous function
approximation.
}
\usage{
	survQuantile(func, probs)
}

\arguments{
  \item{func}{
		A two-column matrix where the first column corresponds to
		sorted survival times and the second one corresponds to their
		survival function value, like matrices returned by 
		\code{survivalST}, \code{survivalSL} or \code{survivalSR}
		functions.
}
  \item{probs}{
		Numeric vector of probabilities with values in [0,1].
}
}

\value{
	A vector of quantiles.
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{survivalST}}, \code{\link{survivalSL}}, \code{\link{survivalSR}}
}

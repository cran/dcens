\name{survProb}
\alias{survProb}

\title{
	Calculate probabilities from a survival function
}
\description{
	This function calculates the probabilities from a survival function corresponding to the given times.
}
\usage{
	survProb(func, times)
}

\arguments{
  \item{func}{
		A two-column matrix where the first column corresponds to
		survival times and the second one corresponds to their survival
		function value, like matrices returned by \code{survivalST},
		\code{survivalSL} or \code{survivalSR} functions.
}
  \item{times}{
		Numeric vector of times.
}
}

\value{
	A vector of probabilities.
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{survivalST}}, \code{\link{survivalSL}}, \code{\link{survivalSR}}
}
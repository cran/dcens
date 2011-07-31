\name{plot.dcens}
\alias{plot.dcens}

\title{
	Plot function for dcens objects
}
\description{
	This function plots the \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} survival functions from a \code{dcens} object. 
}
\usage{
	\method{plot}{dcens}(x, fun = "ST", type = "s", col = "red", lwd = 2, bty = "l", 
	     ylim = c(0, 1), xlab = "t", ylab, main, \dots)
}

\arguments{
  \item{x}{
		Object of class \code{dcens}. 
}
  \item{fun}{
		Survival function to plot. Use \code{"ST"}, \code{"SL"} or \code{"SR"} to plot \eqn{S_T}{ST}, \eqn{S_L}{SL} or \eqn{S_R}{SR}
		survival functions respectively.
}
  \item{type}{
		Type of plot to be drawn. Default to \code{"s"} (step lines).
}
  \item{col}{
		Color of the plot. Default to \code{"red"}.
}
  \item{lwd}{
		Line width. Default to 2.
}
  \item{bty}{
		Type of \sQuote{box}. Default to \code{"l"}.
}
  \item{ylim}{
		Limits for the y axis. Default to [0,1].
}
  \item{xlab}{
		Title for the x axis. Default to \code{"t"} (time).
}
  \item{ylab}{
		Title for the y axis. If not provided, it will be \dQuote{\eqn{S_T}{ST}}, \dQuote{\eqn{S_L}{SL}} or \dQuote{\eqn{S_R}{SR}} by default depending on the 
		survival function to plot.
		
}
  \item{main}{
		Title for the plot. If not provided, it will be \dQuote{\eqn{S_T}{ST} survival function}, \dQuote{\eqn{S_L}{SL}  survival function} or 
		\dQuote{\eqn{S_R}{SR}  survival function} by default depending on the survival function to plot.
}
  \item{\dots}{
		Other arguments to be passed to the generic plot function.
}
}

\author{
	O. Julià, G. Gómez, C. Serrat and J. Cortés.
}

\seealso{
	\code{\link{dcens}}
}


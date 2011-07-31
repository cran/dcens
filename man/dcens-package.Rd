\name{dcens-package}
\alias{dcens-package}
\docType{package}
\title{
Doubly censoring estimation
}
\description{
This R package implements the doubly censoring estimation methodology described at 
\sQuote{Simultaneous marginal survival estimators when doubly censored data is present} 
(O. Julià and G. Gómez, 2010).
}
\details{

A doubly censoring scheme occurs when the lifetimes T being measured, from a well-known time origin,
are exactly observed within a window [L,R] of observational time and are otherwise censored either 
from above (right-censored observations) or below (left-censored observations). Sample data consists 
on the pairs (U, d) where U = min\{R, max\{T,L\}\} and d indicates whether T is exactly observed (d = 0), 
right-censored (d = 1) or left-censored (d = -1). We are interested in the estimation of the marginal 
behaviour of the three random variables T, L and R based on the observed pairs (U, d). We propose new 
nonparametric simultaneous marginal estimators for \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR}, which 
are the survival functions of T, L and R respectively, by means of an inverse-probability-of-censoring approach. 

The implemented package contains one main function called \code{dcens}, which returns estimated \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} 
survival functions and some quantiles from them asked by the user. This function itself calls other 
functions as \code{survProcessing}, which processes the doubly censored data, \code{survivalST}, \code{survivalSL}, \code{survivalSR}, 
that estimate \eqn{S_T}{ST}, \eqn{S_L}{SL} and \eqn{S_R}{SR} respectively, and \code{survQuantile}, which returns estimated quantiles from any 
of the estimated survival functions. Another provided function is \code{survProb}, which returns the probabilities 
from any of the estimated survival functions corresponding to some given times, but it is not called from 
the \code{dcens} main function.

}

\references{
Julià, O. ; Gómez, G. (2011). Simultaneous marginal survival estimators when doubly censored data is present. 
Lifetime Data Analysis, 17, 347-372. ISSN: 1380-7870. DOI 10.1007/s10985-010-9186-5. 
}

\keyword{ package }
\seealso{
\code{\link[dcens:dcens]{dcens}}
}

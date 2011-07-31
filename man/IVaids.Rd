\name{IVaids}
\alias{IVaids}
\docType{data}

\title{
Survival time to AIDS diagnosis in a doubly censored scheme
}

\description{
Data from a cohort of drug users recruited in a detoxification program in Badalona (Spain). Elapsed time from starting IV-drugs to 
AIDS diagnosis has been measured.
}

\usage{data(IVaids)}

\format{
  A data frame with 232 observations on the following 2 variables:
  \describe{
    \item{\code{t}}{Elapsed time from starting IV-drugs to AIDS diagnosis.}
    \item{\code{d}}{Censoring indicator (0 = exact data, -1 = left censored, 1 = right censored).}
  }
}

\source{
Julià, O. ; Gómez, G. (2011). Simultaneous marginal survival estimators when doubly censored data is present. 
Lifetime Data Analysis, 17, 347-372. ISSN: 1380-7870. DOI 10.1007/s10985-010-9186-5. 
}

\seealso{
	\code{\link{dcens}}
}

\keyword{datasets}

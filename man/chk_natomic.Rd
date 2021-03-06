% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chk.R
\name{chk_natomic}
\alias{chk_natomic}
\alias{chk_nlist}
\alias{chk_nlists}
\title{Check Numeric Atomic, nlist Object or nlists Object}
\usage{
chk_natomic(x, x_name = NULL)

chk_nlist(x, x_name = NULL)

chk_nlists(x, x_name = NULL)
}
\arguments{
\item{x}{The object to check.}

\item{x_name}{A string of the name of object x or NULL.}
}
\value{
\code{NULL}, invisibly. Called for the side effect of throwing an error
if the condition is not met.
}
\description{
\code{chk_natomic}
checks if numeric object using

\code{is.numeric(x) && is.atomic(x)}.

\code{chk_nlist}
checks if an \code{\link[=nlist-object]{nlist-object()}}.

\code{chk_nlists}
checks if an \code{\link[=nlists-object]{nlists-object()}}.
}
\section{Functions}{
\itemize{
\item \code{chk_natomic}: Check Numeric Atomic

\item \code{chk_nlist}: Check nlist Object

\item \code{chk_nlists}: Check nlists Object
}}

\examples{

# chk_natomic
chk_natomic(1)
chk_natomic(matrix(1L))
try(chk_natomic(TRUE))

# chk_nlist
chk_nlist(nlist(x = 1))
try(chk_nlist(list(x = 1)))

# chk_nlists
chk_nlists(nlists(nlist(x = 1)))
}
\seealso{
\code{\link[=vld_natomic]{vld_natomic()}}
}

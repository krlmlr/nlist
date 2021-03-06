% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nsims.R
\name{nsims.nlist}
\alias{nsims.nlist}
\title{Number of Simulations}
\usage{
\method{nsims}{nlist}(x, ...)
}
\arguments{
\item{x}{An object.}

\item{...}{Other arguments passed to methods.}
}
\value{
An integer scalar of the number of simulations.
}
\description{
Gets the number of simulations (iterations * chains)
of an MCMC object.
}
\details{
Always 1L.
}
\examples{
nsims(nlist(x = 1:2))
}
\seealso{
Other {MCMC dimensions}: 
\code{\link[universals]{nchains}()},
\code{\link[universals]{niters}()},
\code{\link[universals]{npars}()},
\code{\link[universals]{nsams}()},
\code{\link[universals]{nterms}()}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fill-all.R
\name{fill_all.nlist}
\alias{fill_all.nlist}
\title{Fill All Values}
\usage{
\method{fill_all}{nlist}(x, value = 0L, nas = TRUE, ...)
}
\arguments{
\item{x}{An object.}

\item{value}{A scalar of the value to replace all values with.}

\item{nas}{A flag specifying whether to also fill missing values.}

\item{...}{Other arguments passed to methods.}
}
\value{
The modified object.
}
\description{
Fills all (missing and non-missing) of an object's values while preserving its dimensions.
}
\examples{
fill_all(nlist(x = c(2, NA), y = matrix(c(1:3, NA), nrow = 2)))
fill_all(nlist(x = c(2, NA), y = matrix(c(1:3, NA), nrow = 2)), nas = FALSE)
}
\seealso{
Other {MCMC manipulations}: 
\code{\link[universals]{bind_chains}()},
\code{\link[universals]{collapse_chains}()},
\code{\link[universals]{estimates}()},
\code{\link[universals]{fill_na}()},
\code{\link[universals]{split_chains}()}
}

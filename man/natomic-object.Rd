% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/natomic-object.R
\name{natomic-object}
\alias{natomic-object}
\alias{natomic_object}
\title{natomic Object}
\description{
An natomic object is an integer or double vector, matrix or array.
}
\examples{
mat <- matrix(c("1", "2", "3", "4"), 2L)
mat
is_natomic(mat)
mat <- extras::numericize(mat)
mat
is_natomic(mat)
}

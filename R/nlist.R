#' Create nlist Object
#'
#' Creates a [nlist_object()] from one of more uniquely named [natomic_object()] arguments.
#' 
#' An nlist object is an S3 class list of uniquely named
#' [natomic_object()] elements.
#'
#' nlist objects are the raw data inputs for analytic engines
#' such as JAGS, STAN and TMB.
#' @param ... Uniquely named atomic numeric objects.
#' @return An nlist object.
#' @aliases nlist-object nlist_object
#' @export
#'
#' @examples
#' nlist()
#' nlist(x = 1)
#' nlist(y = 1:4, zz = matrix(1:9, 3))
nlist <- function(...) {
  args <- list(...)
  if (length(args)) {
    return(as.nlist(args))
  }
  structure(list(), .Names = character(0), class = "nlist")
}

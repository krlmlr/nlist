#' As mcmc.list Object
#' 
#' Coerces an nlist object to a \code{coda::mcmc.list} object.
#' @param x A nlist object.
#' @param ... Unused.
#' @return An mcmc.list object.
#' @seealso \code{\link{nlist-object}} and \code{\link[coda]{mcmc}}
#' @export
#' 
#' @examples 
#' coda::as.mcmc.list(nlist(x = matrix(1:6, 2)))
as.mcmc.list.nlist <- function(x, ...) coda::as.mcmc.list(coda::as.mcmc(x))

#' As mcmc Object
#' 
#' Coerces an nlists object to a \code{coda::mcmc} object.
#' @param x A nlists object.
#' @param ... Unused.
#' @return An mcmc object.
#' @seealso \code{\link{nlists-object}} and \code{\link[coda]{mcmc}}
#' @export
#' 
#' @examples 
#' coda::as.mcmc.list(nlists(nlist(x = matrix(1:6, 2)), 
#'                      nlist(x = matrix(3:8, 2))))
as.mcmc.list.nlists <- function(x, ...) {
  if(nchains(x) == 1L) return(coda::as.mcmc.list(coda::as.mcmc(x)))
  x <- split(x, ceiling(seq_along(x)/niters(x)))
  x <- lapply(x, FUN = coda::as.mcmc)
  coda::as.mcmc.list(x)
}
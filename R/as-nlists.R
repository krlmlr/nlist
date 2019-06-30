#' Coerce to nlists
#'
#' Coerce an R object to an nlists object.
#'
#' @param x An R object.
#' @param ... Unused
#' @return An nlist object.
#' @export
#' @examples
#' as.nlists(list(nlist(x = c(1,5)), nlist(x = c(2,3)), nlist(x = c(3,2))))
as.nlists <- function(x, ...) {
  UseMethod("as.nlists")
}

#' @export
as.nlists.list <- function(x, ...) {
  x <- lapply(x, as.nlist)
  check_nlists(x, class = NA)
  class(x) <- "nlists"
  x
}

#' @export
as.nlists.nlists <- function(x, ...) x
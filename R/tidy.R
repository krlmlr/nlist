#' @export
generics::tidy

#' @inherit generics::tidy
#'
#' @export
#' @examples 
#' tidy(nlist(x = 1, y = 4:6))
tidy.nlist <- function(x, ...) {
  chk_unused(...)
  if(!length(x)) return(tibble::tibble(term = term(0)))
  x <- unlist(x)
  term <- as.term(names(x))
  x <- tibble::tibble(term = term, value1 = x)
  x
}

#' @inherit generics::tidy
#'
#' @export
#' @examples 
#' tidy(nlists(nlist(x = 1, y = 4:6),
#'  nlist(x = 3, y = 7:9)))
tidy.nlists <- function(x, ...) {
  chk_unused(...)
  if(!length(x) || !length(x[[1]])) 
    return(tibble::tibble(term = term(0),
                          estimate = numeric(0),
                          sd = numeric(0),
                          zscore = numeric(0),
                          lower = numeric(0),
                          upper = numeric(0),
                          svalue = numeric(0)))
  
  estimate <- tidy(estimates(x, median))
  term <- estimate[[1]]
  estimate <- estimate[[2]]
  sd <- tidy(estimates(x, sd))[[2]]
  zscore <- tidy(estimates(x, zscore))[[2]]
  lower <- tidy(estimates(x, lower))[[2]]
  upper <- tidy(estimates(x, upper))[[2]]
  svalue <- tidy(estimates(x, svalue))[[2]]
  
  tibble::tibble(term = term, estimate = estimate, 
                 sd = sd, zscore = zscore, lower = lower,
                 upper = upper, svalue = svalue)
}

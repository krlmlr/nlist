#' natomic Object
#'
#' An natomic object is an integer or double vector, matrix or array.
#'
#' @name natomic-object
#' @aliases natomic_object
#'
#' @examples
#' mat <- matrix(c("1", "2", "3", "4"), 2L)
#' mat
#' is_natomic(mat)
#' mat <- extras::numericize(mat)
#' mat
#' is_natomic(mat)
NULL

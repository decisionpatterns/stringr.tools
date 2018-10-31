#' is_string
#'
#' Test if object is a string
#'
#' @param x object to test
#'
#' @details
#' Tests if `x` is a string, i.e. a lenght-1 charactaer vector.
#'
#' @return logical
#'
#' @export

is_string <- function (x)
  is.character(x) && length(x) == 1

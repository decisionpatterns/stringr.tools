#'  regex class from character vector
#'
#' @param x character; character vectors
#' @param reverse logical; whether to reverse the class (not implemented)
#'
#' @details
#'
#' Builds a regex class from character vector.  A regular expression class are
#' character elements that are surrounded by "[" and "]" and match ANY member of
#' that class.
#'
#' @examples
#'
#' re_class( letters[1:3] )  # [abc]
#'
re_class <- function(x, reverse=FALSE) {
  paste0( "[", paste( x, collapse="" ), "]" )
}

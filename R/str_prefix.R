#' Add prefix or suffix to a string
#'
#' Adds a prefix or suffix to strings
#'
#' @param x character vector or object with a names attribute
#' @param prefix string;
#' @param suffix character;
#' @param sep character vector to separate \code{prefix} from \code{x}. The
#'   default is "." See Details.
#'
#' @details
#'
#' This is a convenient wrapper for `paste( x, prefix, sep )` and
#' `paste( x, suffix, sep)`.
#'
#' The separator is looked in the options list for: `str_prefix_separator` /
#' `str_suffux_separator` followed by `str_separator`. If those are not found
#' `.` is used.
#'
#' @return
#' character vector with each element of \code{x} prefixed or sufffixed as
#' specified.
#'
#' @examples
#'
#'   lets <- letters[1:5]
#'   str_prefix( lets, "letter" )
#'   str_prefix( lets, "letter", sep="_" )
#'
#'   str_suffix( lets, "letter" )
#'   str_suffix( lets, "letter", sep="_" )
#'
#' @md
#' @rdname str_prefix
#' @export

str_prefix <- function(
    x
  , prefix
  , sep = getOption('str_prefix_separator', getOption('str_seperator', '.' ) )
)
  paste( prefix, x, sep=sep)


#' @rdname str_prefix
#' @export

str_suffix <- function(
    x
  , suffix
  , sep = getOption('str_prefix_separator', getOption('str_seperator', '.' ) )
)
  paste( x, suffix, sep=sep)


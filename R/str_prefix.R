#' Add prefix or suffix to a string
#'
#' Adds a prefix or suffix to strings
#'
#' @param x character vector or object with a names attribute
#' @param prefix string;
#' @param suffix character;
#' @param sep character vector to separate \code{prefix} from \code{x}. The
#'   default is "."
#'
#' @details
#'
#' This is a convenient wrapper for paste( prefix, x, sep ) and
#' paste( x, suffix, sep).
#'
#' @return
#' character vector with each element of \code{x} prefixed or sufffixed as
#' specified.
#'
#' @examples
#'   lets <- letters[1:5]
#'   str_prefix( lets, "letter" )
#'   str_prefix( lets, "letter", sep="_" )
#'
#'   str_suffix( lets, "letter" )
#'   str_suffix( lets, "letter", sep="_" )
#'
#' @rdname str_prefix
#' @export

str_prefix <- function( x, prefix, sep=".")
  paste( prefix, x, sep=sep)

#' @rdname str_prefix
#' @export

str_suffix <- function( x, suffix, sep=".")
  paste( x, suffix, sep=sep)


#' str_detect_tag
#'
#' Similar to stringr's \code{str_detect} except matches are determined by the
#' tag matching, i.e. substring matches. In this instance tags are taken to
#' mean unary bits of information (flags) delineated by a separator. It is often
#' convenient to place these tag in a single text field -- thus this function to
#' see if they match.
#'
#' @param string character vector with each element containing zero or  more
#'   tags separated by \code{sep}
#' @param tags character; vector of one or more tags, can be PCRE
#' @param sep character; single element (usually single character) separator
#'   between tags in \code{string} ( Default: ',' )
#' @param ignore.case logical whether to ignore case during matching
#'   ( Default: TRUE)
#'
#' Tags are matched using \code{str_detect} using Perl regular expressions.
#' Leading and trailing whitespace are ignored.
#'
#' @return logical of the same length of \code{score} indicating whether the
#'   element of score contains ANY of the tags.
#'
#' @seealso
#'   \code{\link[stringr]{str_detect}}
#'
#' @examples
#'   string <- c( 'X', 'Y', 'Z', 'Y,Z' )
#'   tags <- list( 'X', '(y)' )
#'
#'   str_detect_tag( string, tags )   # T, T, F
#'   str_detect_tag( string, tags, ignore.case=FALSE )  # T, F, F
#'
#' @note
#'   allow for leading/trailing white space
#'
# @import stringr
#' @export

str_detect_tag <- function( string, tags, sep=',', ignore.case=TRUE ) {

  # Create pattern like: (^|,)(tags|to|match)(,|$)

  prefix <- paste0( '(^|', sep, ')')
  suffix <- paste0( '(', sep, '|$)' )
  whitespace <- '\\s*'

  pattern <- paste0( tags, collapse='|' )
  pattern <- paste0( '(', pattern, ')' )
  pattern <- paste0( prefix, whitespace, pattern, whitespace, suffix )

  if( ignore.case ) pattern <- ignore.case( pattern )
  pattern <- perl( pattern )

  str_detect( string, pattern )

}

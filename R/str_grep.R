#' Return elements  matching a pattern
#'
#' Get elements matching (\code{str_grep}) or not matching (\code{str_grep})
#' a pattern.
#'
#' @param string string ;
#'   Input vector. Either a character vector, or something
#'   coercible to one.
#'
#' @param pattern match pattern;
#'  The default interpretation is a regular expression, as
#'  described in stringi-search-regex. Control options with regex(). Match a
#'  fixed string (i.e. by comparing only bytes), using fixed(x). This is fast,
#'  but approximate. Generally, for matching human text, you'll want coll(x)
#'  which respects character matching rules for the specified locale.Match
#'  character, word, line and sentence boundaries with boundary().
#'  An empty pattern, "", is equivalent to boundary("character").
#'
#' @details
#'  \code{str_grep} returnes elements matching a pattern. Shorthand for
#'   \code{ string[ str_detect(string,pattern) ] } \cr
#'
#'  \code{str_grepv} returnes elements that do not matching a pattern. The 'v'
#'  derived from the unix flag \code{-v} from the linux \code{grep} command. It
#'  is mostly as a convenient way to avoid negative lookaheads.\cr
#'
#'
#' @seealso
#'   \code{\link[stringr]{str_detect}} \cr
#'
#' @examples
#'  str_grep( letters, '[aeiou]' )
#'  str_grepv( letters[1:5], '[aeiou]' )
#'
#' @export

str_grep <- function(string, pattern)
  string[ str_detect(string,pattern) ]

#' @rdname str_grep
#' @export
#
str_grepv <- function(string, pattern)
  string[ ! str_detect(string,pattern) ]

#' Escape dot(.) in a string
#'
#' Replaces `.` with `\\.` in strings.
#'
#' @param string string
#' @param x string to be escaped, usually a single character.
#'
#' @details
#' `str_escape` escapes **all** instances of `x` in a string by `\\`. This
#' is handy when working with regular expressions, file descriptors, etc. where
#' certain characters have special meaning. By escaping, the character will
#' match litereally instead of using their special meanings.
#'
#' `str_escape_dot` wraps `str_escape` using `x='.'` and `escape='\\\\'`
#'
#' @examples
#'   str_escape( "path/to/file", "/" )
#'   str_escape( "path/to/file", "/", "\\" )
#'
#'   str_escape_dot("hello.world")   # "hello\\.world"
#'   str_escape_dot("foo.bar.baz")   # "foo\\.bar\\.baz"
#'
#' @importFrom stringr str_replace_all
#' @export

str_escape <- function(string, x, escape="\\")
  stringr::str_replace_all( string, fixed(x), paste0(escape, x) )


#' @rdname str_escape
#' @export
str_escape_dot <- function(string, x='.', escape='\\')
  str_escape(string, x, escape )

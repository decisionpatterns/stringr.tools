#' Escape dot(.) in a string
#'
#' Replaces `.` with `\\.` in strings.
#'
#' @param string string
#'
#' @details
#'
#' This escpaes **all** instances in single-dot in strings. This is handy when
#' working with regular expressions where a period/dot is used to mean any
#' character. By escaping, the regular expression will match on a literal
#' period.
#'
#' `str_replace_dot` is simply:
#'
#'      `str_replace_all(string, fixed("."), "\\.")``
#'
#' @examples
#'   str_escape_dot("hello.world")   # "hello\\.world"
#'   str_escape_dot("foo.bar.baz")   # "foo\\.bar\\.baz"
#'
#' @importFrom stringr str_replace_all
#' @export

str_escape_dot <- function(string)
  str_replace_all::str_replace_all(string, fixed("."), "\\.")


# OLD function
# escape_dot <- function(string)
#  str_replace(string, fixed("."), "\\.")

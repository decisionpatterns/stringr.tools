#' Escape dot(.) in a string
#'
#' Replaces `.` with `\\.` in strings.
#'
#' @param string string
#'
#' @details
#'
#' `str_replace_dot` escapes **all** instances of single-dot in a string. This
#' is handy when working with regular expressions where a period/dot is used to
#' mean any character. By escaping, the regular expression will match on a
#' literal period (`.`) instead. This is common in matching with filepaths.
#'
#' `str_replace_dot` is simply:
#'
#'      `str_replace_all(string, fixed("."), "\\.")``
#'
#'
#' @examples
#'   str_escape_dot("hello.world")   # "hello\\.world"
#'   str_escape_dot("foo.bar.baz")   # "foo\\.bar\\.baz"
#'
#' @importFrom stringr str_replace_all
#' @export

str_escape_dot <- function(string)
  stringr::str_replace_all(string, fixed("."), "\\.")

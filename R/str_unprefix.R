#' @details
#' `str_unprefix` and `str_unpostfix`/`str_unsuffix` removes pre- and
#' postfixes. With these, the `prefix` and `postfix` are taken as regular
#' expression, so that one function call can remove a variety of pre- and
#' postfixes.
#'
#' @seealso
#'  - [stringr::str_replace()]
#' @examples
#'   lets <- letters[1:5]
#'   prefixed <- str_prefix( lets, "pre." )
#'   str_unprefix( prefixed, "pre." )
#'
#' @importFrom stringr str_replace
#' @rdname str_prefix
#' @export

str_unprefix <- function(string, prefix, ...)
  str_replace(string, paste0("^",prefix), "", ... )


#' @details
#'   `str_unpostfix` and `str_unsuffix` removes `postfix` (if it exists) from
#'   the string.
#'
#' @examples
#'   lets <- letters[1:5]
#'   postfixed <- str_postfix( lets, "pre." )
#'   str_unpostfix( postfixed, "pre." )
#'
#' @rdname str_prefix
#' @export

str_unpostfix <- function( string, postfix, ... )
  str_replace(string, paste0(prefix, "$"), "", ... )


#' @rdname str_prefix
#' @export
str_unsuffix <- str_unpostfix

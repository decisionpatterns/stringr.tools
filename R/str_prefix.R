#' Add prefix or suffix to a string
#'
#' Adds a prefix or suffix to strings
#'
#' @param x character vector or object with a names attribute
#' @param prefix,postfix string for pre- or postfix
#' @param ... additional arguments passed to subsequent functions
#'
#' @details
#'
#' This is a convenient wrapper for `paste0( x, prefix, ...)` and
#' `paste( x, suffix, ...)`.
#'
#' @return
#' character vector with each element of \code{x} prefixed or sufffixed as
#' specified.
#'
#' @examples
#'   lets <- letters[1:5]
#'   str_prefix( lets, "pre." )
#'   str_posfix( lets, ".post" )
#'
#' @md
#' @rdname str_prefix
#' @export

str_prefix <- function(x, prefix, ...)
  paste0( prefix, x, ...)



#' @details
#' `str_postfix` is an alias for `str_postfix`.
#'
#' @rdname str_prefix
#' @export
str_postfix <- function(x, postfix, ...)
  paste0( x, postfix, ...)


#' @rdname str_prefix
#' @export
str_suffix <- str_postfix


#' @details
#' [str_prefix_idem()] and [str_postfix_idem()] are idempotent forms of
#' [str_prefix()] and [str_postfix()]. Pre- and postfixes are not added to
#' elements that are already pre- or postfixed.
#'
#' @examples
#'  x <- c( "foo", "pre.foo", "bar", "pre.bar", "one.two.three" )
#'  str_prefix_idem(x, "pre.")
#'
#' @rdname str_prefix
#' @export

str_prefix_idem <- function(x, prefix, ...) {

  prefix ->.;
    str_escape_dot(.) ->.;
    paste0( "^", .) ->
    re

  wh <- ! str_detect( x, re )

  x[wh] <- str_prefix( x[wh], prefix )

  x

}


#' @examples
#'  x <- c( "foo", "foo.post", "bar", "bar.post", "one.two.three" )
#'  str_postfix_idem(x, ".post")
#'
#'  # Idempotency
#'  str_postfix_idem( str_postfix_idem(x, ".post"), ".post" )
#'
#' @rdname str_prefix
#' @export
str_postfix_idem <- function(x, postfix, ...) {

  postfix ->.;
    str_escape_dot(.) ->.;
    paste0( ., "$" ) ->
    re

  wh <- ! str_detect(x, re)

  x[wh] <- str_postfix( x[wh], postfix )

  x

}

#' @rdname str_prefix
#' @export

str_suffix_idem <- str_postfix_idem

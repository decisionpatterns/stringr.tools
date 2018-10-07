#' Add prefix or suffix to a string
#'
#' Adds a prefix or suffix to strings
#'
#' @param x character vector or object with a names attribute
#' @param prefix string;
#' @param postfix string used as a suffix;
#' @param ... additional arguments passed to [base::paste()]
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
#' [str_prefix_idem()] is an idempotent form of [str_prefix()]. Prefixes will
#' not be added to elements that are already prefixed.
#'
#' @examples
#'  x <- c( "foo", "pre.foo", "bar", "pre.bar" )
#'
#'  str_prefix_idem(x, "pre.")
#'
#' @rdname str_prefix
#' @export

  str_prefix_idem <- function(x, prefix, ...) {

    re <- paste0("^", prefix) # regular expression match
    wh <- x %>% str_detect(re) %>% not()

    x[wh] <- x[ wh ] %>% str_prefix(prefix)

    x

  }


#' @examples
#'  x <- c( "foo", "pre.foo", "bar", "pre.bar" )
#'
#'  str_postfix_idem(x, ".post")
#'
#' @rdname str_prefix
#' @export
  str_postfix_idem <- function(x, postfix, ...) {

    re <- paste0("^", postfix)
    wh <- x %>% str_detect(re) %>% not()

    x[wh] <- x[ wh ] %>% str_suffix(postfix)

    x

  }

#' @rdname str_prefix
#' @export

str_suffix_idem <- str_postfix_idem

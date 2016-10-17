#' Split on white-space removing quotes
#'
#' Splits a string on whitespace but ignoring whitespace inside quotes
#'
#' @param x character or string; (required)
#'
#' @param quotes character or string; character interpreted as quotes. The
#' default is: ' *single-quote and " *double-quote
#'
#' @details
#'
#' \code{str_split_ws_nonquote} splits strings into a vector elements delineated
#' by whitespace and ignoring whitespace enclosed in quotes.  It also removes
#' those quotes from strings.
#'
#' \code{str_split_ws_nonquote} oses not (yet?) allow for different opening and
#' closing characters.
#'
#' @return character vector
#'
#' @author Decision Patterns from the base.tools packages; used with permission.
#'
#' @examples
#'   character(0) %>% str_split_ws_nonquote()  # character(0)
#'   "" %>% str_split_ws_nonquote()            # "" - no splitting
#'   "foo" %>% str_split_ws_nonquote()         # "foo"
#'   "foo bar" %>% str_split_ws_nonquote       # "foo" "bar"
#'   "'foo' bar" %>% str_split_ws_nonquote     # "foo" "bar"
#'   "'foo' \"bar\"" %>% str_split_ws_nonquote # "foo" "bar"
#'   "'foo bar" %>% str_split_ws_nonquote      #
#'
#' @import stringi
#' @importFrom magrittr %>%
#' @export

str_split_ws_nonquote <- function(x, quotes=c("'",'"') ) {

  x <- as.character(x)
  if( length(x) == 0 ) return(x)

  splits <-
    "'[^']*'|\"[^\"]*\"|[^\\s]+" %>%
    #<-----> <--------> <----->
    #'[^']*'|\"[^\"]*\"
    stringi::stri_extract_all_regex( x, . )

  if( ! length(splits[[1]]) > 1 ) return(x)

  splits %>%
    magrittr::extract2(1) %>%
    stringi::stri_replace_all_regex( ., "^[\"']|[\"']", "" )

}

# Makes regex part for not, e.g. '[^']*'
#                                open [^classes]* c
# @examples
#   mk_quote_regex("'") # '[^']*'
#   mk_quote_regex('"') # \"[^\"]*\"
#   mk_quote_regex( c("'","\""))
mk_quote_regex <- function(x) paste( x, "[^", x, ']*', x, sep="" )


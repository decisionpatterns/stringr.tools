#' Intelligently Split on Whitespace
#'
#' Splits a string on whitespace while ignoring whitespace inside quotes
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
#' \code{str_split_ws_quoted} uses not (yet?) allow for different opening and
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
#' @export

str_split_ws_quoted <- function(x, quotes=c("'",'"') ) {

  x <- as.character(x)
  if( length(x) == 0 ) return(x)

  re.split_preserve_quotes <- "'[^']*'|\"[^\"]*\"|[^\\s]+"
  re.replace_preserve_quotes <- "^[\"']|[\"']"

  splits <-
    # "'[^']*'|\"[^\"]*\"|[^\\s]+" %>%
    stringi::stri_extract_all_regex(x , re.split_preserve_quotes )

  if( ! length(splits[[1]]) > 1 ) return(x)


  # splits[[1]] %>%
  #   stringi::stri_replace_all_regex( "^[\"']|[\"']", "" )

  stringi::stri_replace_all_regex( splits[[1]], re.replace_preserve_quotes, "" )

}



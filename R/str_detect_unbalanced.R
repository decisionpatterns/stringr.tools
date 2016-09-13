#' Detect unbalanced (quotes)
#'
#' Detects whether strings contain unbalanced quites
#'
#' @param string character; string
#' @param quotes character; characters used for quiting
#'
#' @details
#'
#' Determines whether there are unb
#' Unbalanced quotes are determined by an odd number of quotes once all escaped
#' quotes are removed.
#'
#' @return logical
#'
#' @references
#'    Stackoverflow
#'
#' @examples
#
#   '      # TRUE
#   ''     # FALSE
#   '''    # TRUE
#   '\''   # FALSE
#   '\'\'  # TRUE
#
#'   str_detect_unbalanced( character(0) ) # locical(0)
#'   str_detect_unbalanced( "" )           # FALSE
#'   str_detect_unbalanced( "'" )          # TRUE
#'
#'   "foo \\' bar" %>% cat

str_detect_unbalanced <- function(string, quotes = c('\'', '"') ) {
  warning("not implemented yet.")
}

# Remove quotes around elements in vector
str_remove_quotes <- function(string, quotes=c("'", "\"") ) {
  warning("not implemented yet.")
}

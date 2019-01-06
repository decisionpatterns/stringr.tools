#' Snip portion from string
#'
#' Removes a pattern from a string
#'
#' @param string string
#' @param pattern pattern to remove from the string
#'
#' @details
#'
#' `str_replace( string, pattern, '' )
#'
#' @export

str_snip <- function( string, pattern ) {

  str_replace( string, pattern, "" )

}

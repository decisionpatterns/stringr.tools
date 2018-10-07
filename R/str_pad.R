#' pad strings on one right or left
#'
#' @param string string to pad
#' @param width integer; minimum number of characters for the final string
#' @param pad single character string
#' @param side character; one of `left`, `right` or `both`
#'
#' @details
#'   These are convenience wrappers around [stringr::str_pad()]
#'
#' @rdname str_pad
#' @export

str_rpad <- function(string, width, pad = " " )
  stringr::str_pad( string, width, 'right', pad = " ")

#' @rdname str_pad
#' @export
str_lpad <-  function(string, width, pad = " " )
  stringr::str_pad( string, width, 'left', pad = " ")

#' @rdname str_pad
#' @export
str_pad_max <- function(string, side = c("left", "right", "both"), pad = " " )
  stringr::str_pad( string, width=string %>% nchar %>% max, side, pad )

#' @rdname str_pad
#' @export
str_rpad_max <-  function(string, pad = " " )
  stringr::str_pad_max( string, 'right', pad = " ")

#' @rdname str_pad
#' @export
str_lpad_max <-  function(string, pad = " " )
  stringr::str_pad_max( string, 'left', pad = " ")

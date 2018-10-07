#' Non-exported utils

`%>%` = function(par, fun) {

  s = substitute(fun)
  fun.name <- ifelse( is.name(s), s, s[[1]] )
  fun.args = as.list(s)
  fun.args[[1]] = par
  do.call(deparse(fun.name), fun.args)
}


escape_dot <- function(string)
  str_replace(string, fixed("."), "\\.")

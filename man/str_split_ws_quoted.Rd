% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str_split_ws_quoted.R
\name{str_split_ws_quoted}
\alias{str_split_ws_quoted}
\title{Split string on whitespace leaving quoted regions intact}
\usage{
str_split_ws_quoted(x, quotes = c("'", "\\""))
}
\arguments{
\item{x}{character or string; (required)}

\item{quotes}{character or string; character interpreted as quotes. The
default is: ' \emph{single-quote} and \emph{double-quote}}
}
\value{
character vector
}
\description{
Splits a string on whitespace while ignoring whitespace inside quotes
}
\details{
\code{str_split_ws_quoted} splits strings into a vector elements delineated
by whitespace and ignoring whitespace enclosed in quotes.  It also removes
those quotes from strings.

\code{str_split_ws_quoted} uses not (yet?) allow for different opening and
closing characters.
}
\examples{
  character(0) \%>\% str_split_ws_quoted()  # character(0)
  "" \%>\% str_split_ws_quoted()            # "" - no splitting
  "foo" \%>\% str_split_ws_quoted()         # "foo"
  "foo bar" \%>\% str_split_ws_quoted       # "foo" "bar"
  "'foo' bar" \%>\% str_split_ws_quoted     # "foo" "bar"
  "'foo' \\"bar\\"" \%>\% str_split_ws_quoted # "foo" "bar"
  "'foo bar" \%>\% str_split_ws_quoted      #

}
\author{
Decision Patterns from the base.tools packages; used with permission.
}

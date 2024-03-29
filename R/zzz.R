.onAttach <- function( libname, pkgname ) {

  dt <- read.dcf( system.file("DESCRIPTION", package = pkgname ), "Date" )
  yr <- substr(dt,1,4)
  version <- read.dcf( system.file("DESCRIPTION", package = pkgname ), "Version" )

  if( interactive() )
    packageStartupMessage(
        pkgname
      , "-", version
      , ifelse( ! is.na(dt), paste0(' (',dt,')'), '' )
      , " - Copyright \u00a9 ", ifelse(! is.na(yr), yr, '')
      , " Decision Patterns"
      , domain = NA
    )

}


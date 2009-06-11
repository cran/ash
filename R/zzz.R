.First.lib <- function(lib, pkg) {
  if(is.R()) {
    if(getRversion()<="0.62")
      stop("This version for R 0.62 or later")
    library.dynam("ash", pkg, lib)
  }
}

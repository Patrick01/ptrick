tsn <- function(name, dir = NULL){

  name_with_timestamp <- paste0(format(Sys.time(),
                                       "%Y%m%d_%H%M_%S_"),
                                name)

  if (is.null(dir))
    name_with_timestamp
  else
    file.path(dir, name_with_timestamp)
}

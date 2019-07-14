prep_path <- function() {

  x <- chartr("\\", "/", readClipboard())
  writeClipboard(x)
  return(x)

}

#' Title
#'
#' @param dir
#'
#' @return
#' @export
#'
#' @examples
copy_d3 <- function(dir = NULL) {

  if(is.null(dir))
    dir = getwd()
  else if (endsWith(dir, "/"))
    dir = substr(dir, start = 0, stop = length(dir - 1))


  path <- path.package("pmisc")
  fs::file_copy(path = paste0(path, "/d3.min.js"),
                paste0(dir, "/d3.min.js"))
}


create_html_template <- function(name, dir = NULL) {
  if(is.null(dir)) dir = getwd()

  template <-
'<html>
  <body>
    <script src="d3.min.js" charset="utf-8"></script>
    <script>
      // Our code
    </script>
  </body>
</html>'

  readr::write_file(template, path = paste0(dir, "/", name))
}

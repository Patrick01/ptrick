# sc(rmarkdown::render)
# sc(rmarkdown::render, out = "render2.R")
sc <- function(f, out = NULL) {

  nm <- substitute(f)

  if (is.null(out))
    out <- tempfile(fileext = ".R")
  file.create(out)
  sink(out)
  cat(paste("#", rlang::expr_text(nm)))
  cat("\n")
  print(f)
  sink(file = NULL)
  file.edit(out)
}

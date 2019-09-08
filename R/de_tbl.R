de_tbl <- function(table) {

  if (knitr::is_html_output()) {
    kableExtra::kable_styling(
      knitr::kable(table)
    )
  } else if (knitr::is_latex_output()) {
    knitr::kable(table, format = "latex")
  } else {
    flextable::flextable(table)
  }
}

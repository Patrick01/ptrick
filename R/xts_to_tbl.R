
xts_to_tbl <- function(xts) {
  ind <- xts::ind

  tibble::add_column(as_tibble(xts),
                     index = index(xts), before = 1)
}

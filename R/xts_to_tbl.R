


xts_to_tbl <- function(xts) {
  ind <- xts::ind

  apple_df <- tibble::as_tibble(xts) %>%
    mutate(index = index(xts)) %>%
    select(index, everything())
}

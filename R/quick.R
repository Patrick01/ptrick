quick <- function(df) {
  df %>%
    ggplot(aes(x, y)) +
    geom_point() +
    theme_void()
}

add_bridge <- function(df_mit_xy, scale = 1.5, l = 1000) {
  df_mit_xy %>%
    mutate(x = x + as.double(e1071::rbridge(frequency = l)) / scale,
           y = y + as.double(e1071::rbridge(frequency = l)) / scale)
}

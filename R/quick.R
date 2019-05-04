quick <- function(df, coord = TRUE) {

  if (coord) {

    df %>%
      ggplot(aes(x, y)) +
      geom_point() +
      theme_minimal() +
      theme(panel.grid = element_blank()) +
      labs(x = NULL, y = NULL) +
      geom_hline(yintercept = 0, color = "grey20") +
      geom_vline(xintercept = 0, color = "grey20")

  } else {

    df %>%
      ggplot(aes(x, y)) +
      geom_point() +
      theme_void()
  }
}

no_labs <- function() labs(x = NULL, y = NULL)


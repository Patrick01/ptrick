make_ellipse <- function(correlation, l = 100) {
  ellipse::ellipse(correlation, npoints = l) %>%
    as.tibble()
}


make_ellipse_with_bridges <- function(corr = -0.8, l = 1000, sections = 20, scale = 2) {
  n_in_section = l / sections

  make_ellipse(corr, l) %>%
    mutate(section = rep(seq_len(sections), each = n_in_section)) %>%
    nest(x,y, .key = "sections") %>%
    mutate(sections = map(sections, add_bridge, l = n_in_section, scale = !!scale)) %>%
    unnest()
}

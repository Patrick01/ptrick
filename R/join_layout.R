join_layout <- function(graph, layout) {
  graph %>%
    mutate(.ggraph.orig_index = 1:n()) %>%
    left_join(layout, by = ".ggraph.orig_index")
}

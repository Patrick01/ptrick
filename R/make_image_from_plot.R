#' Title
#'
#' @param plot
#'
#' @return
#' @export
#'
#' @examples
make_image_from_plot <- function(plot) {
  img <- image_graph()
  print(plot)
  dev.off()

  return(img)
}

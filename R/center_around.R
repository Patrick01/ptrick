#' Center around a Coordinate
#'
#' @param df
#' @param x_cent
#' @param y_cent
#' @param coord1 optional, only when different from x
#' @param coord2 optional, only when different from y
#'
#' @return
#' @export
#'
#' @examples
center_around <- function(df, x_cent, y_cent, coord1 = x, coord2 = y) {
  coord1 = enquo(coord1)
  coord2 = enquo(coord2)

  mutate(df,
         !!coord1 := !!coord1 + x_cent,
         !!coord2 := !!coord2 + y_cent)
}

#' Title
#'
#' @param r radius
#' @param start
#' @param l number of points
#'
#' @return a tibble with variable x and y with circle coordinates
#' @export
#'
#' @examples
#' make_circle() %>% quick
make_circle <- function(r = 1, start = 0, l = 100) {
  tibble(x = r * cos(seq(start, start + 2 * pi, length.out = l)),
         y = r * sin(seq(start, start + 2 * pi, length.out = l)))
}


#' Data Frame of Circles
#'
#' @param r_vec
#' @param start
#' @param l
#'
#' @return
#' @export
#'
#' @examples
#' make_circles(1:100)
make_circles <- function(r_vec, start = 0, l = 100) {
  mutate(purrr::map_df(r_vec, make_circle, l = l, .id = "r"),
         r = as.double(r))
}


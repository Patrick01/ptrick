#' Calculate flexible number of lags
#'
#' @param var
#' @param n
#'
#' @return
#' @export
#'
#' @examples
#' d <- tibble(x = seq_len(100))
#' mutate(d, !!!lags(x, 10))
lags <- function(var, n = 10) {
  var <- enquo(var)

  indices <- seq_len(n)

  purrr::map(indices, ~ quo(lag(!!var, !!.x))) %>%
    rlang::set_names(sprintf("lag_%s_%02d", rlang::quo_text(var), indices))
}


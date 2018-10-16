give_section <- function(x_i, x_max, num_reg) {

  regions <- seq(0, x_max, length.out = num_reg + 1)

  findInterval(x_i, regions, rightmost.closed = TRUE, left.open = TRUE)
}

give_region <- function(w_i, h_i, w, h, w_sec, h_sec) {

  w_in <- give_section(w_i, w, w_sec)
  h_in <- give_section(h_i, h, h_sec)


  as.integer((h_in - 1) * w_sec + w_in)
}


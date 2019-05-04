seqq <- function(from = 0, to = 1, by = 0.01) seq(from = from, to = to, by = by)
len <- function(vec) sqrt(vec %*% vec)
angle <- function(vec1, vec2) acos( (vec1 %*% vec2) / (len(vec1) * len(vec2)))

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lags.R
\name{lags}
\alias{lags}
\title{Calculate flexible number of lags}
\usage{
lags(var, n = 10)
}
\arguments{
\item{n}{}
}
\description{
Calculate flexible number of lags
}
\examples{
d <- tibble(x = seq_len(100))
mutate(d, !!!lags(x, 10))
}

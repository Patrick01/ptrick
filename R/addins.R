#' Insert dplyr::filter(.
#'
#' Call this function as an addin to insert \code{ dplyr::filter( } at the cursor position.
#'
#' @export
insertfilter <- function() {
  rstudioapi::insertText("filter(")
}


#' Insert dplyr::group_by(.
#'
#' Call this function as an addin to insert \code{ dplyr::group_by( } at the cursor position.
#'
#' @export
insertgroup_by <- function() {
  rstudioapi::insertText("group_by(")
}


#' Insert dplyr::mutate(.
#'
#' Call this function as an addin to insert \code{ dplyr::mutate( } at the cursor position.
#'
#' @export
insertmutate <- function() {
  rstudioapi::insertText("mutate(")
}


#' Insert dplyr::select(.
#'
#' Call this function as an addin to insert \code{ dplyr::select( } at the cursor position.
#'
#' @export
insertselect <- function() {
  rstudioapi::insertText("select(")
}

#' Insert dplyr::select(.
#'
#' Call this function as an addin to insert \code{ dplyr::summarize( } at the cursor position.
#'
#' @export
insertsummarize<- function() {
  rstudioapi::insertText("summarize(")
}



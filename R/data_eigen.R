#' Berechnung der Eigenvalues
#'
#' Die ausgegebenen Werte können direkt als Scree Plot visualisiert werden.
#' @param df Data.frame oder tibble mit numerischen Spalten.
#' @return Eigenvalues und Dimensionen.
#' @examples
#' big_five_comp
#' 
#' big_five_comp |> 
#'  dplyr::select(-Geschlecht) |> 
#'  data_eigen()
#' @export
data_eigen <- function(df) {

  eigenvalues <- eigen(stats::cor(df, use = "pairwise.complete.obs"), symmetric = TRUE)$values

  tibble::tibble(
    Eigenvalues = eigenvalues,
    Dimension = seq_along(eigenvalues)
  )
}

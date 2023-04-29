#' Berechnung der Eigenwerte
#'
#' Die ausgegebenen Eigenwerte können direkt als Scree Plot visualisiert werden.
#' @param df Data.frame oder tibble mit numerischen Spalten.
#' @return Eigenwerte und Dimensionen.
#' @examples
#' big5_comp
#' 
#' big5_comp |> 
#'  dplyr::select(-Geschlecht) |> 
#'  data_eigen()
#' @export
data_eigen <- function(df) {

  eigenvalues <- eigen(stats::cor(df, use = "pairwise.complete.obs"), symmetric = TRUE)$values

  tibble::tibble(
    Eigenwerte = eigenvalues,
    Dimension = seq_along(eigenvalues)
  )
}

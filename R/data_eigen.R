#' Datengenerierungsfunktion Eigenwerte
#'
#' Die Ausgegeben Werte können direkt als Scree Plot visualisiert werden.
#' @param fa Data.frame oder tibble mit numerischen Spalten.
#' @return Scree Plot
#' @examples
#' \dontrun{
#' data_eigen(dataset)
#' }
#' @export
data_eigen <- function(fa) {

  eigenvalues <- eigen(stats::cor(fa, use = "pairwise.complete.obs"), symmetric = TRUE)$values

  tibble::tibble(
    Eigenvalues = eigenvalues,
    Dimension = seq_along(eigenvalues)
  )
}

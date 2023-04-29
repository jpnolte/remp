#' Musikstreaming Nutzerstatistik
#'
#' Dies ist ein Datensatz mit den 50 am meisten gehörten Liedern eines Nutzers in einem bestimmten Zeitraum auf einer Musikstreaming Plattform.
#' @format Ein tibble mit 50 Zeilen and 6 Spalten:
#' \describe{
#'   \item{Lied}{Name des Liedes}
#'   \item{Interpret}{Name des Interpreten}
#'   \item{Album}{Name des Albums}
#'   \item{Anzahl}{Anzahl der Lieder auf dem jeweiligen Album}
#'   \item{Bekanntheit}{Index zur Quantifizierung der Bekanntheit.}
#'   \item{Release}{Veröffentlichungsdatum des jeweiligen Albums oder Liedes}
#' }
#' @examples
#' musikstream
"musikstream"

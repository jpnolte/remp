#' Lieder eines Musik Streamingdienstes
#'
#' Dies ist ein Datensatz mit den 50 am meisten gehörten Liedern eines Nutzers auf einer der bekanntesten Musik Streaming Plattformen.
#' @format Ein tibble mit 50 Zeilen and 6 Spalten:
#' \describe{
#'   \item{Lied}{Name des Liedes}
#'   \item{Interpret}{Name des Interpreten}
#'   \item{Album}{Name des Albums}
#'   \item{Anzahl}{Anzahl der Lieder auf dem jeweiligen Album}
#'   \item{Bekanntheit}{Index zur Quantifizierung der Bekanntheit.}
#'   \item{Release}{Release Datum des jeweiligen Albums/Liedes}
#' }
#' @source \url{Research}
"tracks"

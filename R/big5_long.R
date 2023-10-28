#' BIG 5 Persönlichkeitstest: langes Format
#'
#' Der Datensatz enthält einen Teil des Big5 Datensatzes im langen Format. Für mehr Informationen siehe den Datensatz big5_comp.
#'
#' @format Ein tible mit 200 Zeilen and 16 Spalten:
#' \describe{
#'   \item{Alter}{Alter in Lebensjahren}
#'   \item{Geschlecht}{f = Weiblich, m = Männlich}
#'   \item{Gruppe}{Altersgruppe unterteilt in Jung, Mittel, Weise}
#'   \item{ID}{Individuelle Personenidentifikation}
#'   \item{Faktor}{Persönlichkeitsfaktor Extraversion oder Neurotizismus}
#'   \item{Auspraegung}{Mittlere Ausprägung des jeweiligen Persönlichkeitsfaktors}
#'   \item{Zeitpunkt}{Messzeitpunkt 1 oder 2}
#' }
#' @examples
#' big5_long
#' 
#' @source \url{https://openpsychometrics.org/_rawdata/} (modifiziert)
"big5_long"

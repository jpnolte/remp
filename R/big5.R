#' BIG 5 Persönlichkeitstest: Auswahl
#'
#' Der Datensatz enthält die soziodemographischen Variablen Alter und Geschlecht, die durchschnittliche Ausprägung von Extraversion und Neurotizismus sowie 3 Items, um die Offenheit zu messen. Für mehr Informationen siehe den Datensatz `big5_comp`.
#'
#' @format Ein tible mit 200 Zeilen and 7 Spalten:
#' \describe{
#'   \item{Alter}{Alter in Lebensjahren}
#'   \item{Geschlecht}{f = Weiblich, m = Männlich}
#'   \item{Extraversion}{Durchschnittliche Ausprägung von Extraversion}
#'   \item{Neurotizismus}{Durchschnittliche Ausprägung von Neurotizismus}
#'   \item{O1}{Ich besitze einen großen Wortschatz.}
#'   \item{O2}{Ich habe Schwierigkeiten abstrakte Ideen zu verstehen. (INVERS)}
#'   \item{O3}{Ich habe eine lebhafte Vorstellungskraft.}
#' }
#' @examples
#' big5
#' 
#' @source \url{https://openpsychometrics.org/_rawdata/} (modifiziert)
"big5"

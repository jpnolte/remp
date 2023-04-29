#' BIG 5 Persönlichkeitstest: Modifikation 1
#'
#' Der Datensatz enthält die soziodemographische Variablen Alter und Geschlecht sowie die durchschnittliche Ausprägung von Extraversion und Neurotizismus.
#' Außerdem sind drei Altersgruppen auf Basis der Spalte Alter erstellt worden. Für mehr Informationen siehe den Datensatz `big5_comp`.
#'
#' @format Ein tible mit 200 Zeilen and 6 Spalten:
#' \describe{
#'   \item{Alter}{Alter in Lebensjahren}
#'   \item{Geschlecht}{f = Weiblich, m = Männlich}
#'   \item{Extraversion}{Durchschnittliche Ausprägung von Extraversion}
#'   \item{Neurotizismus}{Durchschnittliche Ausprägung von Neurotizismus}
#'   \item{Gruppe}{Altersgruppe: Jung (unter 31), Mittel (31-50), Weise (über 50)}
#'   \item{ID}{Personenidentifikator}
#' }
#' @examples
#' big5_mod
#' 
#' @source \url{https://openpsychometrics.org/_rawdata/} (modifiziert)
"big5_mod"

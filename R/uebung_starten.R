#' Interaktive Übung starten
#'
#' Starten der im Package enthaltenen Übungen innerhalb von RStudio oder des eigenen Browsers.
#' Dabei ist keine Internetverbindung notwendig. Der Fortschritt innerhalb der Übungen wird automatisch lokal auf dem eigenen Computer gespeichert.
#' @param name Die Nummer der Übung als Character oder Numeric.
#' @return Die ausgewählte Übung wird im Browser gestartet.
#' @examples
#' \dontrun{
#' uebung_starten("6.1")
#' }
#' @export
uebung_starten <- function(name){

  print("Es sind noch keine Übungen enthalten. Schau zu einem späteren Zeitpunkt noch einmal vorbei.")
  # stopifnot(is.character(name) | is.numeric(name))
  # tutorial <- ifelse(is.character(name), name, as.character(name))
  # 
  # learnr::run_tutorial(name = name, package = "remp")
}

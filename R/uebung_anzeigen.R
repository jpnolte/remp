#' Alle Übungen anzeigen
#'
#' Anzeigen der im Package enthaltenen Übungen mit Beschreibung.
#' @param name Die Nummer der Übung als Character oder Numeric.
#' @return Ein data.frame mit Übungsnummer und Kurzbeschreibung
#' @examples
#' uebung_anzeigen()
#' uebung_anzeigen(6.2)
#' @export
uebung_anzeigen <- function(name = "alle"){

  print("Es sind noch keine Übungen enthalten. Schau zu einem späteren Zeitpunkt noch einmal vorbei.")
  
  # stopifnot(is.character(name) | is.numeric(name))
  # 
  # df <- data.frame(
  #   Nummer = c(4.2, 6.2),
  #   Beschreibung = c(
  #     "Variablen speichern und anwenden",
  #     "Spalten auswählen, umbenennen und umsortieren."
  #   )
  # )
  # 
  # if (name == "alle") df
  # else if (is.character(name)) subset(df, Nummer == as.numeric(name))
  # else subset(df, Nummer == name)
}

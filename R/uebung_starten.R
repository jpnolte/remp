#' Interaktive Übung starten
#'
#' Starten der im Package enthaltenen Übungen innerhalb von RStudio oder des eigenen Browsers.
#' Dabei ist keine Internetverbindung notwendig. Der Fortschritt innerhalb der Übungen wird automatisch lokal auf dem eigenen Computer gespeichert.
#' @param name Die Nummer der Übung als Character oder Numeric.
#' @return Die ausgewählte Übung wird im Browser gestartet.
#' @examples
#' \dontrun{
#' uebung_starten("4-3-1")
#' }
#' @export
uebung_starten <- function(name){

  if (missing(name)) stop("Die Funktion benötigt die Nummer des Kapitels als Character, um die Übung zu starten. Für mehr Informationen über alle enthaltenen Übungen führe uebung_anzeigen() aus.", call. = FALSE)

  df <- data.frame(
    Nummer = c("4-3-1", "4-3-2", "4-3-3"),
    Beschreibung = c(
      "Zahlen, Buchstaben und logische Abfragen",
      "Faktoren und ihre Eigenschaften",
      "Die wichtigsten Zeitdaten"
    )
  )

  if (!name %in% df$Nummer | !is.character(name)) stop("Die Kapitelnummer muss als Character getrennt mit einem Bindestrich eingeben werden. Die Übung zu Kapitel 4.5 startet man mit 4-5 in Anführungszeichen. Für mehr Informationen über alle existierenden Übungen führe uebung_anzeigen() aus.", call. = FALSE)
  else if (!require(learnr, quietly = TRUE)) stop("Zum Starten der Übungen muss das learnr Package installiert werden.", call. = FALSE)
  else learnr::run_tutorial(name = name, package = "remp")
}

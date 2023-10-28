#' Alle Übungen anzeigen
#'
#' Anzeigen der im Package enthaltenen Übungen mit Beschreibung.
#' @param name Die Nummer der Übung als Character oder Numeric.
#' @return Ein data.frame mit Übungsnummer und Kurzbeschreibung
#' @examples
#' uebung_anzeigen("4-3-1")
#' uebung_anzeigen()
#' @export
uebung_anzeigen <- function(name = "alle"){

  if (require("tibble", quietly = TRUE)) {
    df <- tibble::tibble(
      Nummer = c("4-3-1", "4-3-2", "4-3-3"),
      Beschreibung = c(
        "Zahlen, Buchstaben und logische Abfragen",
        "Faktoren und ihre Eigenschaften",
        "Die wichtigsten Zeitdaten"
      )
    )
  } else {
    df <- data.frame(
      Nummer = c("4-3-1", "4-3-2", "4-3-3"),
      Beschreibung = c(
        "Zahlen, Buchstaben und logische Abfragen",
        "Faktoren und ihre Eigenschaften",
        "Die wichtigsten Zeitdaten"
      )
    )
  }

  if (name == "alle") df
  else if (!is.character(name)) stop("Die Kapitelnummer muss als Character getrennt von einem Bindestrich eingeben werden. Die Information der Übung zu Kapitel 4.5 startet man mit 4-5 in Anführungszeichen.", call. = FALSE)
  else if (!name %in% df$Nummer) stop("Für dieses Kapitel gibt es keine Übung. Führe die Funktion ohne Argument aus, um alle existierende Übungen angezeigt zu bekommen.", call. = FALSE)
  else subset(df, Nummer == name)
}

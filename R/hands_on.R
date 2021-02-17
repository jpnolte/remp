#' Übungen starten
#'
#' Eine komfortable Funktion zum Starten der im `remp` enthaltenen Übungen im eigenen Standardbrowser.
#' Es ist keine Internetverbindung notwendig.
#' @param name Der Name der Übung als Character.
#' @return Die ausgewählte Übung wird im Browser gestartet.
#' @examples
#' \dontrun{
#' hands_on("ue_datatypes")
#' }
#' @export
hands_on <- function(name){

  learnr::run_tutorial(name = name, package = "remp")

}

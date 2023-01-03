#' Interaktive Übung starten
#'
#' Starten der im Package enthaltenen Übungen im eigenen Browser.
#' Dabei ist keine Internetverbindung notwendig. Der Fortschritt innerhalb der Übungen wird automatisch lokal auf dem eigenen Computer gespeichert.
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

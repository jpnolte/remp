#' Behandlung einer Krebserkrankungen
#'
#' PatientInnen mit einer Krebserkrankungen (malignen Neoplasie) wurden in Hinblick auf verschiedene Aspekte untersucht. Die Variablen wurden mithilfe des `simstudy` Packages simuliert.
#' @format Ein tibble mit 450 Zeilen and 13 Spalten:
#' \describe{
#'   \item{Pat_id}{PatientInnen Nummer.}
#'   \item{Geschlecht}{Biologisches Geschlecht mit "f" für Frauen und "m" für Männer.}
#'   \item{Behandlung}{Behandlungsart: Radiochemotherapie, Chemotherapie oder Radiotherapie.}
#'   \item{Leukos_t0}{Leukozytenanzahl (E9/L) bei Therapiebeginn.}
#'   \item{Leukos_t6}{Leukozytenanzahl (E9/L) sechs Monate nach Therapiebeginn.}
#'   \item{Alter}{Lebensalter in Jahren.}
#'   \item{Infektionen}{Anzahl an Infektionen innerhalb von 2 Jahren.}
#'   \item{Stationaer}{Stationärer Krankenhausaufenthalt.}
#'   \item{Komorb}{Komorbiditäten: Keine, Lunge, Herz, Gehirn.}
#'   \item{Beob_zeit}{Beobachtungszeit der PatientInnen innerhalb von 15 Jahren.}
#'   \item{Status}{0: zensiert (ausgeschieden aus der Studie), 1: Tod.}
#'   \item{Lebensqualitaet}{Fragebogenergebnis zur Lebensqualität auf einer Skala von 1 (keine Lebensqualität) bis 10 (absolute Zufriedenheit).}
#'   \item{Schmerzen}{Fragebogenergebnis zur subjektiven Schmerzintensität auf einer Skala von 1 (keine Schmerzen) bis 10 (unterträgliche Schmerzen).}
#' }
#' @examples
#' chemo
"chemo"

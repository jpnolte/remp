#' Behandlung einer Krebserkrankungen
#'
#' PatientInnen mit einer Krebserkrankungen (malignen Neoplasie) wurden in Hinblick auf verschiedene Aspekte untersucht. Die Variablen wurden mithilfe des `simstudy` Packages simuliert.
#' @format Ein tibble mit 450 Zeilen and 13 Spalten:
#' \describe{
#'   \item{Pat_id}{PatientInnen Nummer.}
#'   \item{Geschlecht}{Biologisches Geschlecht mit "f" für Frauen und "m" für Männer.}
#'   \item{Behandlung}{Behandlungsart: Radiochemotherapie, Chemotherapie oder Radiotherapie. Simulation: gleichmäßiges Treatment Assignment mit 1;1;1.}
#'   \item{Leukos_t0}{Leukozytenanzahl (E9/L) bei Therapiebeginn. Simulation: Normalverteilung mit 1.01xLeukos_t6}
#'   \item{Leukos_t6}{Leukozytenanzahl (E9/L) sechs Monate nach Therapiebeginn. Simulation: Normalverteilung mit 6.02 + 0.01xGeschlecht - 0.02xBehandlung mit einer Varianz von 0.1.}
#'   \item{Alter}{Lebensalter in Jahren. Simulation: Normalverteilung mit Mittelwert von 45 und Varianz von 20.}
#'   \item{Infektionen}{Anzahl an Infektionen innerhalb von 2 Jahren. Simulation: Negative Binomialverteilung mit 1 + 0.3xBehandlung + 0.02xAlter und einer Varianz von 0.4.}
#'   \item{Stationaer}{Stationärer Krankenhausaufenthalt. Simulation: Binomialverteilung mit 0.08 - 0.003xGeschlecht + 0.01xInfektionen.}
#'   \item{Komorb}{Komorbiditäten: Keine, Lunge, Herz, Gehirn. Simulation: Multinomialverteilung mit den Wahrscheinlichkeiten 0.6;0.15;0.15;0.1 für keine; Lunge; Herz; Gehirn.}
#'   \item{Beob_zeit}{Beobachtungszeit der PatientInnen innerhalb von 15 Jahren. Simulation: Weibull Verteilung mit 1.2xBehandlung - .7xGeschlecht, scale = 50 und shape = 0.5.}
#'   \item{Status}{0: zensiert (ausgeschieden aus der Studie), 1: Tod. Simulation: Simulation: scale = 20, shape = 1}
#'   \item{Lebensqualitaet}{Fragebogenergebnis zur Lebensqualität auf einer Skala von 1 (keine Lebensqualität) bis 10 (absolute Zufriedenheit). Simulation: Korrelation mit Schmerzen durch rho von -0.6.}
#'   \item{Schmerzen}{Fragebogenergebnis zur subjektiven Schmerzintensität auf einer Skala von 1 (keine Schmerzen) bis 10 (unterträgliche Schmerzen). Simulation: siehe Lebensqualität.}
#' }
#'
#' @examples
#' chemo
"chemo"

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_binary.R
\name{data_binary}
\alias{data_binary}
\title{Antwortmatrix erstellen}
\usage{
data_binary(df, answers)
}
\arguments{
\item{df}{Datensatz als data.frame oder tibble.}

\item{answers}{Antwortvektor als Vektor oder einzeiliger data.frame bzw. tibble.}
}
\value{
Antwortmatrix als tibble.
}
\description{
Erstellt eine binäre Ergebnismatrix, in der die richtigen Antworten mit einer 1 und die falschen mit einer 0 ausgegeben werden.
Falls die richtigen Antworten sowohl Numerics als auch Characters beinhalten, kann der Funktion ebenfalls ein einzeiliger data.frame oder tibble übergeben werden.
Fehlende Werte werden automatisch als falsch beantwortet gewertet.
}
\examples{
# Identische Datentypen
soscisurvey <- data.frame(
 I1 = c(3, 2, 3, 1),
 I2 = c(2, 2, 2, 1),
 I3 = c(4, 1, 4, 4)
)
soscisurvey
antwortvec <- c(3, 2, 4)
data_binary(df = soscisurvey, answers = antwortvec)

# Verschiedene Datentypen
soscisurvey2 <- data.frame(
 I1 = c(3, 2, 3, 1),
 I2 = c("Apfel", "Banane", "Erdbeere", "Apfel"),
 I3 = c(4, 1, NA, 4)
)
soscisurvey2
antwortdf <- data.frame(3, "Apfel", 4)
data_binary(df = soscisurvey2, answers = antwortdf)
}

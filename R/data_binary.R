#' Antwortmatrix erstellen
#'
#' Erstellt eine binäre Ergebnismatrix, in der die richtigen Antworten mit einer 1 und die falschen mit einer 0 ausgegeben werden.
#' Falls die richtigen Antworten sowohl Numerics als auch Characters beinhalten, kann der Funktion ebenfalls ein einzeiliger data.frame oder tibble übergeben werden.
#' Fehlende Werte werden automatisch als falsch beantwortet gewertet.
#' @param df Datensatz als data.frame oder tibble.
#' @param answers Antwortvektor als Vektor oder einzeiliger data.frame bzw. tibble.
#' @return Antwortmatrix als tibble.
#' @examples
#' # Identische Datentypen
#' soscisurvey <- data.frame(
#'  I1 = c(3, 2, 3, 1),
#'  I2 = c(2, 2, 2, 1),
#'  I3 = c(4, 1, 4, 4)
#' )
#' soscisurvey
#' antwortvec <- c(3, 2, 4)
#' data_binary(df = soscisurvey, answers = antwortvec)
#' 
#' # Verschiedene Datentypen
#' soscisurvey2 <- data.frame(
#'  I1 = c(3, 2, 3, 1),
#'  I2 = c("Apfel", "Banane", "Erdbeere", "Apfel"),
#'  I3 = c(4, 1, NA, 4)
#' )
#' soscisurvey2
#' antwortdf <- data.frame(3, "Apfel", 4)
#' data_binary(df = soscisurvey2, answers = antwortdf)
#' @export
data_binary <- function(df, answers){

  cols <- dim(df)[2]
  rows <- dim(df)[1]
  type <- class(answers)

  ma <- as.data.frame(
    matrix(rep(NA, cols * rows), ncol = cols)
  )

  df[is.na(df)] <- 0

  if (any(type == "data.frame")) {

    answers <- as.data.frame(answers)

    for (i in seq_along(answers)) {
      ma[ ,i] <- rep(answers[1, i], rows)
    }

  } else if (type == "numeric" | type == "character") {

    for (i in seq_along(answers)) {
      ma[ ,i] <- rep(answers[i], rows)
    }

  }

  trueFalse <- df == ma

  answer <- data.frame(
    matrix(ifelse(trueFalse == TRUE, 1, 0), ncol = cols)
  )

  names(answer) <- names(df)

  return(tibble::as_tibble(answer))

}

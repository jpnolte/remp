#' Lagemaße und Streuungsmaße berechnen
#'
#' Berechnet die Anzahl N, Quartile, Mittelwert, Median, Standardabweichung und Standardfehler.
#' @param data Daten als data.frame, tibble oder grouped.df.
#' @param .round Runden der Nachkommastellen. Default ist 2.
#' @return Überblick über typische Lage- und Streuungsmaße.
#' @examples
#' iq
#'
#' iq |> 
#'   descriptive()
#'
#' iq |> 
#'   dplyr::group_by(Zeitpunkt) |> 
#'   descriptive()
#' 
#' @export
descriptive <- function(data, .round = 2) {

  old_opt <- options()$dplyr.summarise.inform
  options(dplyr.summarise.inform = FALSE)
  on.exit(options(dplyr.summarise.inform = old_opt), add = TRUE)

  desc <- function(data, .round = .round) {
    data |> 
      dplyr::select(where(is.numeric)) |> 
      tidyr::pivot_longer(
        cols = everything(),
        names_to = "Variable",
        values_to = "Value"
      ) |> 
      dplyr::group_by(Variable) |> 
      dplyr::summarise(
        N = dplyr::n(),
        Min = round(min(Value, na.rm = TRUE), .round),
        Q1 = round(stats::quantile(Value, 0.25, na.rm = TRUE), .round),
        Mean = round(mean(Value, na.rm = TRUE), .round),
        Median = round(stats::median(Value, na.rm = TRUE), .round),
        Q3 = round(stats::quantile(Value, 0.75, na.rm = TRUE), .round),
        Max = round(max(Value, na.rm = TRUE), .round),
        SD = round(stats::sd(Value, na.rm = TRUE), .round),
        SE = round(SD / sqrt(N), .round)
      )
  }
  if (any(class(data) == "data.frame") & !dplyr::is_grouped_df(data)) {
    data |> 
      desc(.round)
  } else if (dplyr::is_grouped_df(data)) {
    data |> 
      dplyr::group_modify(~ desc(.x, .round))
  } else {
    stop("The data must be a data.frame, tibble or grouped.df",
         call. = FALSE)
  }
}

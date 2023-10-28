#' Lagemaße und Streuungsmaße berechnen
#'
#' Berechnet die Anzahl N, Quartile, Mittelwert, Median, Standardabweichung und Standardfehler.
#' @param data Daten als data.frame, tibble oder grouped.df.
#' @param .round Anzahl der Nachkommastellen (Default: 2).
#' @param .print Anzahl der Zeilen, die ausgegeben werden sollen (Default: 20). Das Argument überschreibt das Standardverhalten eines tibbles, i.d.R nur 10 Zeilen anzuzeigen.
#' @param .tibble Ausgabe als data.frame (FALSE) oder tibble (TRUE) (Default: TRUE).
#' @return Überblick über typische Lage- und Streuungsmaße.
#' @examples
#' chemo
#'
#' chemo |> 
#'   descriptive()
#'
#' chemo |> 
#'   dplyr::group_by(Behandlung) |> 
#'   descriptive()
#' @export
descriptive <- function(data, .round = 2, .print = 20, .tibble = TRUE) {
  
  old_opt <- options()$dplyr.summarise.inform
  options(dplyr.summarise.inform = FALSE)
  on.exit(options(dplyr.summarise.inform = old_opt), add = TRUE)
  
  desc <- function(data, .round = .round) {
    
    df1 <- dplyr::select(data, where(is.numeric)) 
    df2 <- tidyr::pivot_longer(df1, 
        cols = everything(),
        names_to = "Variable",
        values_to = "Value" 
      ) 
    df3 <- dplyr::group_by(df2, Variable)  
    df4 <- dplyr::summarise(df3,
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
    res <- desc(data, .round)
  } else if (dplyr::is_grouped_df(data)) {
    res <- dplyr::group_modify(data, ~ desc(.x, .round))
  } else {
    stop("The data must be a data.frame, tibble or grouped.df", call. = FALSE)
  }
  
  if (!.tibble) as.data.frame(res) 
  else print(res, n = .print)
}

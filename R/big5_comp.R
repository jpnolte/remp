#' BIG 5 Persönlichkeitstest: Vollständig
#' 
#' @description
#' Fragebogen zu den BIG 5 Persönlichkeitsfaktoren durch das *50-Item Lexical Big-Five Factor Markers* Inventar (IPIP). Jede der fünf Persönlichkeitseigenschaften wurde mithilfe von jeweils 10 Items gemessen. Die unterschiedlichen Fragen konnten auf einer Likert Skala beantwortet werden (1: Sehr unzutreffend, 2: Moderat unzutreffend, 3: Weder zutreffend noch unzutreffend, 4: Moderat zutreffend, 5: Sehr zutreffend). 
#' 
#' Invers kodierte Items sind in der Beschreibung unten entsprechend markiert. Der Anfangsbuchstabe der Spalte drückt den Persönlichkeitsfaktor aus: Extraversion, Neurotizismus, Verträglichkeit, Gewissenhaftigkeit und Offenheit für neue Erfahrungen).
#' @format Ein tibble mit 5000 Zeilen and 52 Spalten:
#' \describe{
#'   \item{Alter}{Alter in Lebensjahren}
#'   \item{Geschlecht}{f: Frauen, m: Männer}
#'   \item{E1}{Ich bringe eine Party in Schwung.}
#'   \item{E2}{Ich spreche nicht viel. (INVERS)}
#'   \item{E3}{Ich fühle mich wohl unter Menschen.}
#'   \item{E4}{Ich halte mich im Hintergrund. (INVERS)}
#'   \item{E5}{Ich beginne Gespräche.}
#'   \item{E6}{Ich habe wenig zu sagen. (INVERS)}
#'   \item{E7}{Ich spreche mit vielen verschiedenen Leuten auf Parties.}
#'   \item{E8}{Ich mag es nicht, Aufmerksamkeit auf mich zu ziehen. (INVERS)}
#'   \item{E9}{Es macht mir nichts aus, im Zentrum der Aufmerksamkeit zu stehen.}
#'   \item{E10}{Ich bin still unter Fremden. (INVERS)}
#'   \item{N1}{Ich gerate leicht in Stress.}
#'   \item{N2}{Ich bin die meiste Zeit entspannt.	(INVERS)}
#'   \item{N3}{Ich grübel über Dinge.}
#'   \item{N4}{Ich fühle mich selten deprimiert oder bedrückt. (INVERS)}
#'   \item{N5}{Ich bin leicht beunruhigt.}
#'   \item{N6}{Ich rege mich leicht auf.}
#'   \item{N7}{Ich wechsel oft meine Stimmung.}
#'   \item{N8}{Ich habe häufig Stimmungsschwankungen.}
#'   \item{N9}{Ich bin leicht gereizt.}
#'   \item{N10}{fühle mich oft deprimiert oder bedrückt.}
#'   \item{V1}{Ich empfinde wenig für andere. (INVERS)}
#'   \item{V2}{Ich bin interessiert an anderen Menschen.}
#'   \item{V3}{Ich beleidige andere. (INVERS)}
#'   \item{V4}{Ich fühle mit anderen Menschen mit.}
#'   \item{V5}{Ich bin nicht interessiert an den Problemen anderer Leute. (INVERS)}
#'   \item{V6}{Ich habe ein weiches Herz.}
#'   \item{V7}{Ich bin nicht wirklich interessiert an anderen. (INVERS)}
#'   \item{V8}{Ich nehme mir Zeit für andere.}
#'   \item{V9}{Ich fühle die Gefühle anderer.}
#'   \item{V10}{Ich kann andere beruhigen.}
#'   \item{G1}{Ich bin immer vorbereitet.}
#'   \item{G2}{Ich lasse meine Sachen herumliegen. (INVERS)}
#'   \item{G3}{Ich achte auf Details.}
#'   \item{G4}{Ich verursache großes Durcheinander. (INVERS)}
#'   \item{G5}{Ich erledige Hausarbeiten unmittelbar.}
#'   \item{G6}{Ich vergesse oft, Dinge an ihren Platz zurückzulegen. (INVERS)}
#'   \item{G7}{Ich mag Ordnung.}
#'   \item{G8}{Ich drücke mich vor meinen Pflichten. (INVERS)}
#'   \item{G9}{Ich folge einem Plan.}
#'   \item{G10}{Ich bin anspruchsvoll in meiner Arbeit.}
#'   \item{O1}{Ich besitze einen großen Wortschatz.}
#'   \item{O2}{Ich habe Schwierigkeiten abstrakte Ideen zu verstehen. (INVERS)}
#'   \item{O3}{Ich habe eine lebhafte Vorstellungskraft.}
#'   \item{O4}{Ich bin an abstrakten Ideen nicht interessiert. (INVERS)}
#'   \item{O5}{Ich habe ausgezeichnete Ideen.}
#'   \item{O6}{Ich habe kein gutes Vorstellungsvermögen. (INVERS)}
#'   \item{O7}{Ich verstehe Dinge schnell.}
#'   \item{O8}{Ich gebrauche schwierige Wörter.}
#'   \item{O9}{Ich verbringe Zeit damit über Dinge nachzudenken.}
#'   \item{O10}{Ich bin voller Ideen.}
#' }
#' @examples
#' big5_comp
#' 
#' @source \url{https://openpsychometrics.org/_rawdata/} 
"big5_comp"


<!-- badges: start -->
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
<!-- badges: end -->


# R für empirische Wissenschaften

Die am häufigsten verwendete Statistikprogrammiersprache R wird in den meisten wissenschaftlichen Fachrichtungen und in vielen Unternehmen verwendet. Dieses Buch bietet einfache Erklärungen mit praktischen Beispielen und Übungen, welche das Erlernen von R ohne Programmiervorkenntnisse im Selbststudium ermöglichen. Nach Durcharbeiten dieses Buches können sämtliche Problemstellungen der Datenanalyse gelöst werden, einschließlich

- Datensätze einlesen und bereinigen,
- komplexe Abbildungen erstellen,
- deskriptive und induktive Statistik anwenden und
- Ergebnisse in Word, als PDF oder als Website exportieren.

Veröffentlicht ist das Buch unter der *Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International* Lizenz und das begleitende R Package remp unter der GPL-3 Lizenz.

### Inhaltsverzeichnis

1. [Einleitung](https://r-empirische-wissenschaften.de/buch/intro.html): Aufbau des Buches, ergänzende Literatur.
2. [Startvoraussetzungen](https://r-empirische-wissenschaften.de/buch/start.html): Installation von R, RStudio und Packages.
3. [R Projekte](https://r-empirische-wissenschaften.de/buch/project.html): Relative Pfade, Projekte in RStudio erstellen.
4. [Wichtiges Grundlagenwissen](https://r-empirische-wissenschaften.de/buch/vars.html): Variablen, Datentypen, Dollar-Operator.
5. [Datensätze](https://r-empirische-wissenschaften.de/buch/io.html): Einlesen von R, Excel, SPSS und csv Dateien.
6. [Datenvorbereitung](https://r-empirische-wissenschaften.de/buch/datenvorbereitung.html): Datensätze aufbereiten, Spalten hinzufügen, Funktionen erstellen u.v.m.
7. [Deskriptive Statistik](https://r-empirische-wissenschaften.de/buch/descr.html): Lage- und Streuungsmaße, Häufigkeiten, Zusammenhangsmaße.
8. [Visualisierungen](https://r-empirische-wissenschaften.de/buch/visual.html): Abbildungen publikationsreif erstellen und anpassen.
9. [Inferenzstatistik](https://r-empirische-wissenschaften.de/buch/inductive.html): Klassische statistische Modelle aufstellen.
10. [Ergebnisse exportieren](https://r-empirische-wissenschaften.de/buch/ergebnisse-exportieren.html): Tabellen und Berichte in Word, PDF und HTML.
11. [Datenstrukturen](https://r-empirische-wissenschaften.de/buch/datatypes.html): Vektor, Matrix, data.frame, tibble, Liste, Objektorientierung.
12. [Funktionen wiederholt anwenden](https://r-empirische-wissenschaften.de/buch/iterationmain.html): Listenbasiertes Rechnen, for-Schleifen, einnisten.

### Begleitendes R Package `remp`

Das `remp` Package enthält Datensätze, Funktionen und Übungen auf die im Laufe des Buches immer wieder zurückgegriffen wird. Die enthaltenen Features können im Reiter *Dokumentation* in der Navigationsleiste eingesehen werden. Die Installation erfolgt mithilfe des `remotes` Packages.

```R
library(remotes)
install_github("jpnolte/remp")
```

Detaillierte Installationsanweisungen von R, RStudio und den notwendigen Packages sind im Buch enthalten.

### FAQ

<div id="faq">
  <ul>
    <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Welche Zielgruppe hat dieses Buch?</h2>
      <p>WissenschaftlerInnen und StudentInnen der Fachrichtungen Medizin, Psychologie, Betriebswirtschaftslehre, Wirtschaftswissenschaften, soziale Arbeit, Pharmazie, Agrarwissenschaften, Neurowissenschaften, Biologie, Journalismus, Tourismus, Data Science, Biostatistik und allen weiteren Disziplinen, die Daten auswerten möchten.</p>
    </li>
     <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Was ist R und wieso sollte ich es lernen?</h2>
      <p>R ist eine Statistikprogrammiersprache, die unter einer Open Source Lizenz kostenlos verfügbar ist. Durch eine große Community gibt es heute für jeden Anwendungsbereich die passenden Erweiterungen. In den letzten Jahren war daher ein Wechsel von kostenpflichtigen Programmen wie Matlab, SAS, SPSS oder Stata zu R erkennbar. Denn wer nicht mehrere tausend Euro zahlt, konnte die Auswertungen dieser Programme nicht nachvollziehen. Sowohl in der Forschung als auch in vielen Bereichen der freien Wirtschaft profitiert man mit R Kenntnissen. Eine sinnvolle Alternative stellt nur Python dar, welches aber bedeutend schwieriger zu erlernen ist und im Kontext der reinen Datenanalyse keinen Vorteil bietet.</p>
    </li>
     <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Ist R einfach zu lernen und kann ich es mir selbst beibringen?</h2>
      <p>Da R als Programmiersprache speziell für die statistische Datenanalyse entwickelt wurde, ist das Erlernen deutlich einfacher als andere Programmiersprachen. Das hängt vor allem auch mit der einfachen Benutzeroberfläche durch RStudio und die gut integrierten Erweiterungen zusammen. Essentiell beim Selbststudium einer Programmiersprache ist das selbstständige Anwenden entweder der enthaltenen Übungen oder auf eigene Projekte. Wenn man ein Programmierbuch durchliest, ohne eine Übung zu machen, ist man hinterher nicht viel schlauer als vorher. Ähnlich wie man keine Sprache lernen kann, wenn man diese nie mit anderen spricht. </p>
    </li>
    <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Wird alles abgedeckt, was man zur Datenanalyse benötigt?</h2>
      <p>Ja, nach Durcharbeiten dieses Buches können typische sowie fortgeschrittene Probleme der Datenauswertung selbstständig mit R gelöst werden. </p>
    </li>
    <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Sollte man Vorwissen in Statistik haben?</h2>
      <p>Ja, aber zum grundlegenden Bearbeiten des Buches wird kein Statistikwissen vorausgesetzt. Um die vorgestellten Funktionen der deskriptiven und induktiven Statistik allerdings sinnvoll anwenden zu können, sollte ein fundiertes statistisches und methodisches Verständnis vorliegen. Ergänzende Literatur zum Erlernen des zugehörigen Statistikwissens ist im Buch angegeben.
      </p>
    </li>
    <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Gibt es eine gebundene Version zu kaufen?</h2>
      <p>Nein, derzeit ist das Buch noch nicht in Papierform erhältlich, allerdings ist eine gebundene Veröffentlichung in Planung. Genaue Details folgen. </p>
    </li>
    <li>
      <input type="checkbox" checked>
      <i></i>
      <h2>Können die Inhalte heruntergeladen werden?</h2>
      <p>Nein, offline wird das Buch voraussichtlich nur in gebundener Form und nicht als e-book oder PDF angeboten werden. </p>
    </li>
  </ul>
</div>

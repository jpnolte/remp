# remp 1.0.3
- Datum: *2024-10-09*
- Nennenswerte Textänderungen: 
    - Berücksichtigung der Kommentare eines Reviewers.
    - Kapitel 7.1: Geringerer Fokus auf die Funktion `summarise()` aus `dplyr`.
    - Kapitel 7.2: Anstelle der Funktion `count()` aus `dplyr` wird jetzt die Funktion  `tabyl()` aus dem `janitor` Package verwendet.
    - Kapitel 7.3: Einführung von Visualisierungen für Korrelationen.
    - Kapitel 8.13.1: Umstellung vom `survminer` auf das deutlich besser anpassbare `ggsurvfit` Package.
- Fehlerbehebungen: 
    - In der Funktion `descriptive()` darf der Spaltenname jetzt auch `Variable` heißen.

# remp 1.0.2
- Datum: *2024-04-01*
- Kleinere Textanpassungen.
- Die Funktion `descriptive()` gibt nun standardmäßig einen normalen `tibble` aus. Falls mehr als 10 Zeilen gewünscht sind, muss dies explizit mit dem `.print` Argument festgelegt werden. Das Verhalten zuvor war problematisch, falls man mit direkt in ein einer Pipe weiterrechnen wollte, da das Ergebnis so mehrmals ausgegeben wurde.

# remp 1.0.1
- Datum: *2023-10-28*
- Übungen 
    - Die Testphase der interaktiven Übungen hat mit den ersten 3 Übungen für das Kapitel *Datentypen* begonnen. 
    - Das für die Übungen benötigte `learnr` Package wurde als zur Installation empfohlenes Package (*Suggests*) hinzugefügt. 
- Die Funktionen `uebung_anzeigen()` und `uebung_starten()` funktionieren nun erwartungsgemäß.
- FAQ Accordion Fehlerbehebung der maximalen Höhe auf Mobilgeräten. 

# remp 1.0.0
- Datum: *2023-05-15*
- Zukünftig werden noch Übungen hinzugefügt und der Text ggf. geringfügig angepasst.  
- Das Repository liegt nun auf dem Account `jpnolte`. Die Installationsanleitung des Packages ist entsprechend angepasst. 

# remp 0.1.3
- Datum: *2023-04-30*
- Dokumentation der Funktionen und Datensätze wurden überarbeitet.
- Finale Korrektur der Datensätze.
- Kleinere Textanpassungen.
- Funktion `descriptive()`  mit den neuen Argumenten `.print` und `.tibble`.
- Die Installation des Packages setzt nun die R Version 3.5 voraus.

# remp 0.1.2
- Datum: *2023-04-23*
- Kapitel Inferenzstatistik wurde überarbeitet.
- Neue Datensätze: `chemo` und `covid`

# remp 0.1.1
- Datum: *2023-01-03*
- Kapitel Datenvorbereitung, Visualisierungen, Datenstrukturen und Funktionen wiederholt anwenden (ehem. Iterationen) wurden überarbeitet.
- Neue Datensätze `df_oben`, `df_unten` und `demogr` anstelle von `A`, `B`, `C` und `D` zum Erklären von Joins.
- Umstellung auf die Base R Pipe `|>` anstelle von `%>%` (benötigt R `4.1.0` oder neuer).

# remp 0.1.0 
- Datum: *2022-10-02*
- Kapitel Einleitung, Startvoraussetzung, Projektorientierung, Wichtiges Grundlagenwissen (ehem. Variablen), Datensätze, Deskriptive Statistik und Ergebnisse exportieren wurden überarbeitet.
- Website basiert jetzt auf Bootstrap 5.
- Kapitel Latente Variablenmodelle entfernt.
- Kapitel zum `gt` Package entfernt, da sich das Package in absehbarer Zeit in keiner stabilen Version befinden wird.

# remp 0.0.2

- Rohform des Buches ist nun vorhanden. Eine Ausnahme stellt dabei Kapitel 9 (Inferenzstatistik) dar, welches noch komplett neu geschrieben wird.
- `transform_binary()` in `data_binary()` umbenannt mit leichten internen Modifikationen
- Neue Datensätze: `bitcoin`, `literacy`, `A`, `B`, `C`, `D`

# remp 0.0.1

- Erster Release des Packages und der Website.
- Aktuelle Buchversion entspricht **nicht** der finalen Version.
- Datensätze und Übungen sind zum jetzigen Zeitpunkt noch nicht vollständig.

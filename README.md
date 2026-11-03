# Finder_Kombigrafiken_einsortieren

Kleine Finder-Quick-Action für den Alltag mit Figma- oder Grafik-Exports.

## Umfang

Dieses Projekt erweitert den macOS Finder um eine einfache Service-Aktion, die in einem ausgewählten Ordner automatisch Kombi-Ordner verarbeitet. Dabei werden Unterordner erkannt, deren Name ein "+" enthält, z. B. "Speaker A + Speaker B". Für jeden Namen wird ein eigener Zielordner im übergeordneten Ordner angelegt, die Dateien werden dorthin kopiert und im Dateinamen entsprechend umbenannt. Danach wird der ursprüngliche Kombi-Ordner mit einem roten Label markiert.

Der Fokus liegt auf der schnellen Sortierung von exportierten Grafikdateien nach Personen bzw. Speaker-Namen ohne manuelle Umbenennung.

## Verwendung

1. Ordner im Finder auswählen.
2. Rechtsklick -> Dienste -> Finder_Kombigrafiken_einsortieren.
3. Die Aktion durchläuft alle Kombi-Unterordner im gewählten Ordner und sortiert die Dateien entsprechend.

## Installation

Das Skript `install.sh` installiert die Automator-Workflow-Datei in `~/Library/Services` und aktiviert sie im Finder.


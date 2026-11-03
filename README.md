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

Die Installation erfolgt im Terminal über einen einzigen Copy-&-Paste-Befehl. Das Skript lädt den Workflow aus diesem GitHub-Repository herunter, installiert ihn in `~/Library/Services` und lädt Finder neu.

1. Terminal öffnen (Finder > Programme > Dienstprogramme > Terminal).
2. Den folgenden Befehl vollständig kopieren, ins Terminal einfügen und Enter drücken:

```bash
curl -fsSL https://raw.githubusercontent.com/mschuetze/Finder_Kombigrafiken_einsortieren/main/install.sh | bash
```

Nach erfolgreicher Installation erscheint die Aktion im Finder unter Rechtsklick > Dienste > Finder_Kombigrafiken_einsortieren. Eine manuelle Eingabe oder Bearbeitung von Befehlen ist nicht erforderlich.

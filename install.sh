#!/bin/bash
set -e

ACTION_NAME="Finder_Kombigrafiken_einsortieren.workflow"
TARGET_DIR="$HOME/Library/Services"
# Ersetzen Sie DEIN-GITHUB-NUTZER und DEIN-REPO durch Ihre echten GitHub-Werte:
REPO_URL="https://github.com/DEIN-GITHUB-NUTZER/Finder_Kombigrafiken_einsortieren/archive/refs/heads/main.zip"
TMP_DIR=$(mktemp -d)

echo "Lade neueste Version der Schnellaktion herunter..."
curl -sL "$REPO_URL" -o "$TMP_DIR/repo.zip"
unzip -q "$TMP_DIR/repo.zip" -d "$TMP_DIR"

mkdir -p "$TARGET_DIR"

# Alte Vorgänger-Dateien aufräumen
rm -rf "$TARGET_DIR/SoMe_einsortieren"*
rm -rf "$TARGET_DIR/$ACTION_NAME"

# Neue Version installieren
cp -R "$TMP_DIR"/*/"$ACTION_NAME" "$TARGET_DIR/"

# Finder-Erweiterungen neu einlesen
killall pkd 2>/dev/null || true
killall Finder 2>/dev/null || true

# Temp-Dateien löschen
rm -rf "$TMP_DIR"

echo "Erfolgreich installiert! 'Finder_Kombigrafiken_einsortieren' ist im Finder aktiv."
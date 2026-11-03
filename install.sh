#!/bin/bash
set -e
set -o pipefail

ACTION_NAME="Finder_Kombigrafiken_einsortieren.workflow"
TARGET_DIR="$HOME/Library/Services"
# Ersetzen Sie DEIN-GITHUB-NUTZER und DEIN-REPO durch Ihre echten GitHub-Werte:
REPO_URL="https://github.com/mschuetze/Finder_Kombigrafiken_einsortieren/archive/refs/heads/main.zip"
TMP_DIR=$(mktemp -d)

echo "Lade neueste Version der Schnellaktion herunter..."
curl -sL "$REPO_URL" -o "$TMP_DIR/repo.zip"
unzip -q "$TMP_DIR/repo.zip" -d "$TMP_DIR"

WORKFLOW_PATH="$TMP_DIR"/*/"$ACTION_NAME"
VERSION=$(plutil -extract actions.0.action.ActionParameters.source raw -o - "$WORKFLOW_PATH/Contents/document.wflow" | sed -nE 's/.*set currentVersion to "([^"]+)".*/\1/p')
if [ -z "$VERSION" ]; then
	echo "Fehler: Workflow-Version konnte nicht ausgelesen werden." >&2
	exit 1
fi

mkdir -p "$TARGET_DIR"

# Alte Vorgänger-Dateien aufräumen
rm -rf "$TARGET_DIR/SoMe_einsortieren"*
rm -rf "$TARGET_DIR/$ACTION_NAME"

# Neue Version installieren
cp -R "$WORKFLOW_PATH" "$TARGET_DIR/"

# Finder-Erweiterungen neu einlesen
killall pkd 2>/dev/null || true
killall Finder 2>/dev/null || true

# Temp-Dateien löschen
rm -rf "$TMP_DIR"

echo "Erfolgreich installiert: Finder_Kombigrafiken_einsortieren ($VERSION). Die Aktion ist nun im Finder aktiv."

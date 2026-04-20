#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Usage: $0 fichier1 fichier2 fichier_resultat"
    exit 1
fi
cat "$1" "$2" | sort > "$3"
lignes_total=$(wc -l < "$3")
echo "✅ Fichier '$3' créé avec $lignes_total lignes triées"

#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 nom_fichier"
    exit 1
fi
if [ ! -e "$1" ]; then
    echo "Le fichier n'existe pas"
    exit 1
fi
if [ -d "$1" ]; then
    echo "C'est un répertoire"
fi
if [ -x "$1" ]; then
    echo "Le fichier est exécutable"
else
    echo "Le fichier n'est pas exécutable"
fi

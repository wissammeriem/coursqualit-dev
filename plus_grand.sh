#!/bin/bash
# 2.2 - Plus grand de trois entiers

if [ $# -ne 3 ]; then
    echo "Erreur: Trois arguments requis"
    echo "Usage: $0 nombre1 nombre2 nombre3"
    exit 1
fi

if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
    echo "Le plus grand est : $1"
elif [ $2 -ge $3 ]; then
    echo "Le plus grand est : $2"
else
    echo "Le plus grand est : $3"
fi

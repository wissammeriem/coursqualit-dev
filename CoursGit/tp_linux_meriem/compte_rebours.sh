#!/bin/bash
echo "=== COMPTE À REBOURS ==="
read -p "Entrez le nombre de départ: " start

i=$start
while [ $i -ge 1 ]; do
    echo "$i..."
    sleep 1
    i=$((i-1))
done
echo "Partez ! 🚀"

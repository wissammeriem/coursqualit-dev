#!/bin/bash
echo "=== CONCATÉNATION ET TRI ==="

# Créer deux fichiers de test
echo "banane" > fruits1.txt
echo "pomme" >> fruits1.txt
echo "orange" >> fruits1.txt

echo "kiwi" > fruits2.txt
echo "ananas" >> fruits2.txt
echo "cerise" >> fruits2.txt

# Concaténer et trier
cat fruits1.txt fruits2.txt | sort > fruits_tries.txt

echo "Fichiers créés :"
echo "--- fruits1.txt ---"
cat fruits1.txt
echo "--- fruits2.txt ---"
cat fruits2.txt
echo "--- fruits_tries.txt (trié) ---"
cat fruits_tries.txt

#!/bin/bash
echo "=== INFORMATIONS SYSTÈME ==="
echo "Utilisateur: $USER"
echo "Date: $(date)"
echo "Système: $(uname -s)"
echo "Répertoire courant: $(pwd)"
echo ""

echo "=== ESPACE DISQUE ==="
df -h | head -n 5
echo ""

echo "=== MÉMOIRE ==="
free -h
echo ""

echo "=== PROCESSUS EN COURS ==="
echo "Nombre de processus: $(ps aux | wc -l)"

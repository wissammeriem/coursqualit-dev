#!/bin/bash
echo "=== SAUVEGARDE AUTOMATISÉE ==="

# Créer un dossier de test s'il n'existe pas
mkdir -p test_dossier
echo "fichier1" > test_dossier/f1.txt
echo "fichier2" > test_dossier/f2.txt

# Créer la sauvegarde
date_sauvegarde=$(date +%Y%m%d_%H%M%S)
nom_sauvegarde="backup_$date_sauvegarde.tar.gz"

tar -czf "$nom_sauvegarde" test_dossier/

echo "Sauvegarde créée: $nom_sauvegarde"
echo "Taille: $(du -h $nom_sauvegarde | cut -f1)"
echo "Contenu de l'archive:"
tar -tzf "$nom_sauvegarde"

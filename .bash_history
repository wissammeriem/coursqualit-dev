whoami
cd ~
mkdir tp_linux_meriem
cd tp_linux_meriem
pwd
# 1.1 Créer nom.txt avec "Meriem"
cat > nom.txt
# Vérifier
cat nom.txt
echo "Wissam" > prenom.txt
cat prenom.txt
cat nom.txt prenom.txt > id.txt
cat id.txt
ls -l
echo "Wissam" > prenom.txt
cat prenom.txt
cat nom.txt prenom.txt > id.txt
cat id.txt
ls -l
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
wc toto.c
cat nom.txt prenom.txt > id.txt
cat id.txt
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
wc toto.c
wc < toto.c
cat toto.c | wc
who
who | wc -l
ls -l | grep '^-..w.......'
chmod 640 id.txt
ls -l id.txt
ls -l
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
who
who | wc -l
ls -l | grep '^-..w.......'
chmod 640 id.txt
ls -l id.txt
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
wc toto.c
# Vérifier les permissions actuelles
ls -l id.txt
# Changer les permissions
chmod 640 id.txt
# Vérifier le changement
ls -l id.txt
# Vérification finale
echo "=== EXERCICE 1 TERMINÉ ==="
ls -l
cat id.txt
ls -l id.txt
chmod 640 id.txt
ls -l id.txt
ls -l
ls -lls -l
cd ~/tp_linux_meriem
nano somme.sh
cd ~/tp_linux_meriem
echo '#!/bin/bash' > somme.sh
echo 'if [ $# -ne 2 ]; then' >> somme.sh
echo '    echo "Erreur: Deux arguments requis"' >> somme.sh
echo '    exit 1' >> somme.sh
echo 'fi' >> somme.sh
echo 'resultat=$(( $1 + $2 ))' >> somme.sh
echo 'echo "Somme: $1 + $2 = $resultat"' >> somme.shXX
chmod +x somme.sh
./somme.sh 5 8
./somme.sh 10 3
# Crée le script
cat > plus_grand.sh << 'EOF'
#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Erreur: Trois arguments requis"
    exit 1
fi
if [ $1 -ge $2 ] && [ $1 -ge $3 ]; then
    echo "Le plus grand est: $1"
elif [ $2 -ge $1 ] && [ $2 -ge $3 ]; then
    echo "Le plus grand est: $2"
else
    echo "Le plus grand est: $3"
fi
EOF

# Teste
chmod +x plus_grand.sh
./plus_grand.sh 5 10 3
./plus_grand.sh 7 2 9
# Crée le script
cat > verif_fichier.sh << 'EOF'
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
EOF

# Teste
chmod +x verif_fichier.sh
./verif_fichier.sh somme.sh
cat > boucle.sh << 'EOF'
#!/bin/bash
i=5
while [ $i -ge 1 ]; do
    echo $i
    i=$((i-1))
done
echo "Partez ! 🚀"
EOF

chmod +x boucle.sh
./boucle.sh
cat > concat_tri.sh << 'EOF'
#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Usage: $0 fichier1 fichier2 fichier_resultat"
    exit 1
fi
cat "$1" "$2" | sort > "$3"
lignes_total=$(wc -l < "$3")
echo "✅ Fichier '$3' créé avec $lignes_total lignes triées"
EOF

chmod +x concat_tri.sh
./concat_tri.sh nom.txt prenom.txt resultat_trie.txt
cat resultat_trie.txt
cat > inverse.sh << 'EOF'
#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 nombre"
    exit 1
fi
echo $1 | rev
EOF

chmod +x inverse.sh
./inverse.sh 123
./inverse.sh 789
cat > somme_chiffres.sh << 'EOF'
#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 nombre"
    exit 1
fi
nombre=$1
somme=0
for (( i=0; i<${#nombre}; i++ )); do
    chiffre=${nombre:$i:1}
    somme=$((somme + chiffre))
done
echo "Nombre: $nombre"
echo "Somme des chiffres: $somme"
EOF

chmod +x somme_chiffres.sh
./somme_chiffres.sh 123
./somme_chiffres.sh 456
cd ~/tp_linux_meriem
# Vérifie tous tes fichiers
ls -l
# Crée l'archive ZIP
zip -r tp_meriem.zip .
# Vérifie le ZIP
ls -l tp_meriem.zipµ
cp tp_meriem.zip /mnt/c/Users/wmeri/Desktop/
cd ~/tp_linux_meriem
zip -r tp_meriem.zip .
ls -l tp_meriem.zip
cd ~/tp_linux_meriem
# Crée une archive avec tar (équivalent zip)
tar -czf tp_meriem.tar.gz .
# Vérifie
ls -l tp_meriem.tar.gz
# Copie vers Windows
cp tp_meriem.tar.gz /mnt/c/Users/wmeri/Desktop/
cd ~/tp_linux_meriem
tar -czf tp_meriem.tar.gz .
ls -l tp_meriem.tar.gz
\\wsl.localhost\Ubuntu\home\wmeri\tp_linux_meriem
#!/bin/bash
if [ $# -ne 2 ]; then     echo "Usage: $0 motif fichier";     exit 1; fi
#!/bin/bash
if [ $# -ne 2 ]; then     echo "Usage: $0 motif fichier";     exit 1; fi
cd ~/tp_linux_meriem
echo "Meriem" > nom.txt
cat nom.txt
echo "Wissam" > prenom.txt
cat prenom.txt
cat nom.txt prenom.txt > id.txt
cat id.txt
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
wc toto.c
who | wc -l
chmod 640 id.txt
ls -l
cat id.txt
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
wc toto.c
wc < toto.c
cat toto.c | wc
who | wc -l
chmod 640 id.txt
ls -l id.txt
echo "Meriem" > nom.txt
echo "Wissam" > prenom.txt
cat nom.txt prenom.txt > id.txt
echo "première ligne" > toto.c
echo "deuxième ligne" >> toto.c
echo "troisième ligne" >> toto.c
wc toto.c
wc < toto.c
cat toto.c | wc
who | wc -l
chmod 640 id.txt
ls -l
cat id.txt
# Vérifie que tu es dans Linux
whoami
pwd
ls
cd ~
mkdir tp_linux_meriem
cd tp_linux_meriem
pwd
cat > nom.txt
#!/bin/bash
if [ $# -ne 2 ]; then     echo "Usage: $0 motif fichier";     exit 1; fi
# Se positionner dans le bon dossier
cd ~
mkdir tp_linux_meriem
cd tp_linux_meriem
pwd
cat > bonjour.sh << 'EOF'
#!/bin/bash
echo "=== SCRIPT BONJOUR ==="
echo "Bonjour $USER !"
echo "Nous sommes le $(date +%d/%m/%Y)"
echo "Vous êtes dans : $(pwd)"
EOF

chmod +x bonjour.sh
./bonjour.sh
# Lister tous vos fichiers
cd ~/tp_linux_meriem
ls -la
# Voir le contenu de somme.sh
cat somme.sh
# Se positionner dans le bon dossier
cd ~/tp_linux_meriem
# Créer le script calculatrice.sh
cat > calculatrice.sh << 'EOF'
#!/bin/bash
echo "=== CALCULATRICE SIMPLE ==="
read -p "Entrez le premier nombre: " num1
read -p "Entrez le deuxième nombre: " num2

echo "--- RÉSULTATS ---"
echo "Addition: $num1 + $num2 = $(($num1 + $num2))"
echo "Soustraction: $num1 - $num2 = $(($num1 - $num2))"
echo "Multiplication: $num1 * $num2 = $(($num1 * $num2))"

if [ $num2 -ne 0 ]; then
    echo "Division: $num1 / $num2 = $(($num1 / $num2))"
else
    echo "Division: Impossible (division par zéro)"
fi
EOF

# Rendre exécutable et tester
chmod +x calculatrice.sh
./calculatrice.sh
cat > calculatrice.sh << 'EOF'
#!/bin/bash
echo "Calculatrice simple"
read -p "Premier nombre: " num1
read -p "Deuxième nombre: " num2
echo "$num1 + $num2 = $(($num1 + $num2))"
echo "$num1 - $num2 = $(($num1 - $num2))"
echo "$num1 * $num2 = $(($num1 * $num2))"
EOF

chmod +x calculatrice.sh
./calculatrice.sh
cat > compte_rebours.sh << 'EOF'
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
EOF

chmod +x compte_rebours.sh
./compte_rebours.sh
cat > concat_tri.sh << 'EOF'
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
EOF

chmod +x concat_tri.sh
./concat_tri.sh
cat > systeme_info.sh << 'EOF'
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
EOF

chmod +x systeme_info.sh
./systeme_info.sh
cat > sauvegarde.sh << 'EOF'
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
EOF

chmod +x sauvegarde.sh
./sauvegarde.sh
C:\Users\wmeri\AppData\Local\Packages\5319275A.WhatsAppDesktop_cv1g1gvanyjgm\TempState\022A50D5A53F9F27B285E58D37441BDD\WhatsApp Image 2025-11-10 à 09.22.53_b82262d8.jpg
SELECT titre, année FROM FILM;
# Se connecter à la base
sqlite3 cinema.db
psql-h
which sqlite3
sqlite3 --version
which sqlite3
sqlite3 --version
sqlite tp4.db
CREATE TABLE PERSONNE (idPersonne INTEGER PRIMARY KEY, nom TEXT, prenom TEXT);
INSERT INTO PERSONNE VALUES (1,'Kidman','Nicole');
SELECT * FROM PERSONNE;
sudo apt install sqlite3
WISSAM1234567
cat > nom.txt
# 1. Nom avec cat
cat > nom.txt
# 1. Nom avec cat (entrée standard)
cat > nom.txt
cat > scl.sh << 'EOF'
#!/bin/bash
# Script exemple avec variables
echo "=== Script scl.sh ==="

# Déclaration variables
v1="premiere_variable"
v2=100

# Utilisation variables
echo "La valeur de v1 est : $v1"
echo "La valeur de v2 est : $v2"

# Lecture entrée utilisateur
echo -n "Entrez une valeur : "
read entree_utilisateur
echo "Vous avez entré : $entree_utilisateur"
EOF

chmod +x scl.sh
./scl.sh
cat > scl_modifie.sh << 'EOF'
#!/bin/bash
echo "=== Script modifié ==="

# Éviter la chaîne vide
entree_utilisateur=""
while [ -z "$entree_utilisateur" ]; do
    echo -n "Entrez une valeur (non vide) : "
    read entree_utilisateur
    if [ -z "$entree_utilisateur" ]; then
        echo "Erreur : La valeur ne peut pas être vide !"
    fi
done

echo "Vous avez entré : $entree_utilisateur"
EOF

chmod +x scl_modifie.sh
./scl_modifie.sh
cat > sc2.sh << 'EOF'
#!/bin/bash
echo "Nom du script : $0"
echo "Nombre d'arguments : $#"
echo "Arguments : $@"

# Affichage des arguments un par un
echo "=== Arguments ==="
for i in $@; do
    echo "Argument : $i"
done

# Utilisation de shift
echo "=== Après shift ==="
shift
echo "Arguments après shift : $@"
EOF

chmod +x sc2.sh
./sc2.sh arg1 arg2 arg3 arg4
cat > somme.sh << 'EOF'
#!/bin/bash
# 2.1 - Somme de deux entiers

if [ $# -ne 2 ]; then
    echo "Erreur: Deux arguments requis"
    echo "Usage: $0 nombre1 nombre2"
    exit 1
fi

resultat=$(($1 + $2))
echo "$1 + $2 = $resultat"
EOF

chmod +x somme.sh
./somme.sh 5 3
cat > plus_grand.sh << 'EOF'
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
EOF

chmod +x plus_grand.sh
./plus_grand.sh 5 12 8
git clone https://github.com/charroux/testsLogiciel
cd testsLogiciel
git remote remove origin
git clone https://github.com/charroux/testsLogiciel
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin main
https://github.com/wissammeriem
https://github.com/wissammeriem/coursqualit-dev
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin main
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin mainhttps://github.com/wissammeriem/coursqualit-dev
https://github.com/wissammeriem/coursqualit-dev
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin main
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin main
in
git remote add origin https://github.com/charroux/test1.git
git push -u origin main
git clone https://github.com/charroux/testsLogicie
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/charroux/test1.git
git push -u origin main

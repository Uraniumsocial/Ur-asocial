#!/bin/bash

# Vérifie qu’un message de commit est fourni
if [ -z "$1" ]; then
  echo "❌ Erreur : tu dois fournir un message de commit. Exemple :"
  echo "   bash mise_a_jour.sh \"Ajout du backend Express\""
  exit 1
fi

# Ajoute tous les fichiers, fait le commit et pousse sur GitHub
git add .
git commit -m "$1"
git push

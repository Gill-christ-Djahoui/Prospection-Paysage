#!/bin/sh
# Télécharge les vraies photos de Clément Paysagisme dans le dossier images/
cd "$(dirname "$0")" && mkdir -p images && cd images || exit 1
B=https://www.clement-paysagisme.ch/assets/img
curl -fsS -o logo.png "$B/logo_menu.png" || echo "ÉCHEC : logo"
curl -fsS -o accueil.jpg "$B/logo_home.jpg" || echo "ÉCHEC : photo d'accueil"
for n in 2 4 5 7 8 9 10 11 12 13 14 15 16 17 18 19; do
  curl -fsS -o "work-$n.jpg" "$B/work/$n.jpg" || echo "ÉCHEC : work-$n.jpg"
done
ls -l

#!/bin/bash

#utiles au  cas où
# git reset --hard origin/main
#attention, nettoyage majeur !!

#autres pouvant être utiles
# pour forcer un overwrite sur le local (pas de merge)
# git fetch all
# git --set-upstream origin main
# git reset --hard origin/main

echo
tput setaf 1
echo ">faire attention - après install clean une fois"
tput sgr0
echo
echo "selection du pattern correct:"
echo
echo "0. Ne rien faire"
echo "1. alex"
echo "ton choix ..."

read CHOICE

case $CHOICE in

	0 )
		echo
		echo " rien de fait, comme demandé"
		echo
		;;
	1 )
		git config --global pull.rebase false
		git config --global push.default simple
		git config --global user.name "Alex D."
		git config --global user.email "sombretoile@gmail.com"
		sudo git config --system core.editor vim
		git config --global credential.helper cache
		git config --global credential.helper 'cache --timeout=32000'
		;;

         * )
		 echo
		 echo "essaie encore,(0/1)..."
		 echo
		 ;;
 esac

 echo "les credentiels github sont posés."
 echo "si erreurs efface ~/.cache/git" 

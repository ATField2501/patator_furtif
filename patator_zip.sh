#!/bin/bash
# -*- coding: utf8 

chemin_vers_patator="*à renseigné *"
chemin_vers_dico="*à renseigné *"

if [ $# = 0 ]                                       
then
    echo "..Aucune cible spécifié. ."
elif [ $1 = -h ]
then
    echo " Utilisation du patator chainé avec un proxy "
    exit
else
    echo "******* Caglio-Script ********"
    echo "        patator zip     "

python $chemin_vers_patator unzip_pass zipfile=$1 password=FILE0 0=$chemin_vers_dico -x ignore:code!=0

fi

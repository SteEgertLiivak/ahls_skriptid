#!/bin/bash
#kasutaja lisamine
#juhend käsu täitmiseks 
 
echo "Sisestage uue kasutaja nimi: $nimi "
read nimi

useradd $nimi

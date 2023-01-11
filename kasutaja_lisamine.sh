#!/bin/bash
#kasutaja lisamine
#juhend käsu täitmiseks 
 
#echo "Sisestage uue kasutaja nimi: $nimi
#read nimi

#useradd $nimi

#teine lahendus
if [ $# -ne 1 ]; then
	echo "Kasutusjuhend: $0 kasutajanimi"
else
	kasutajanimi=$1
	useradd $kasutajanimi -m -s /bin/bash
	if [ $? -eq 0 ]; then 
		echo "Kasutaja nimega $kasutajanimi on lisatud süsteemi"
		cat /etc/passwd | grep $kasutajanimi
		ls -la /home/$kasutajanimi
	else
		echo "probleem kasutaja $kasutajanimi lisamisega"
		echo "probleemkood on $?"
	fi
fi



#apache paigaldus
#kontrollime, kas apache2 on juba olemas
APACHE2=$(dpkg-query -W -f='${Status}' apache2 | grep -c "ok installed")
#kui apache2 puudub, siis installeerime selle
if [ $APACHE2 -eq 0 ]; then
	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"
#kui apache2 on juba olemas, siis stardime teenuse
elif [ $APACHE2 -eq 1 ]; then
echo "Apache2 on juba paigaldatud"
	service apache2 start
	service apache2 status
fi

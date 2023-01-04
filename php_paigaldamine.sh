#php paigaldusskript

PHP=$(dpkg-query -W -f='${Status}' php7.4 | grep -c "ok installed")

if [ $PHP -eq 0 ]; then
	echo "Paigaldame php ja vajalikud lisad"
	apt install php7.4
	echo "php on paigaldatud"
elif [ $PHP -eq 1 ]; then
	echo "php on juba paigaldatud"
	which php
fi


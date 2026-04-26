if [ $# -gt 1 ]; then
	echo "Potrebno je proslijediti samo jedan argument!"
else
	if [ -e "./$1" ]; then
		trenutni=$(pwd)
		cd $1
		zip -r "svi_zapisi.zip" *
		cd $trenutni
	else
		echo "Uneseni direktorij ne postoji!"
	fi
fi


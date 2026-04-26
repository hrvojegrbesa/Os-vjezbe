if [ $# = 2 ]; then
	brojac=0
	for element in "$1"/*; do
		if [[ $element == *$2 ]]; then
			echo "$(basename "$element")"
			(( brojac++ ))
		fi
	done
	if [ $brojac == 0 ]; then
		echo "Direktorij ne sadrži datoteke s ekstenzijom $2"
	fi
else
	echo "Potrebno je proslijediti točno 2 argumenta!"
fi

if ["$#" -ne 1 ]; then
	echo "Potrebno je proslijediti jedan argument"
	exit 1
fi

putanja="$1"

if [ ! -d "putanja" ]; then
	echo "Direktorij ne postoji"
	exit 1
fi

if [ ! -d "putanja"/.git" ]; then
	echo "Nije git repozitorij"
	exit 1
fi

cd "putanja" || {
	echo "Ne mogu uci u direktorij"
	exit 1
}

echo "Datoteka repozitorij_info.txt stvorena: $(date)" > repozitorij_info.txt
	git add repozitorij_info.txt
	git commit -m

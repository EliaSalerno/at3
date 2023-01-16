a=0
for j in $(ls utenza/);
do
	for i in $(cat utenza/$j);
	do
		ut=${i%-*}
		ps=${i#*-}
		useradd -m "$ut@issgreppi.it"
		echo -e "$ut@issgreppi.it:$ps" | chpasswd
		a=$((a+1))
		touch "/home/.confcl"
		echo "  Classe: $j">>"/home/.confcl"
		echo "  Utente: $ut">>"/home/.confcl"
		chmod 500 "/home/.confcl"
	done
done
chmod 750 /home/*
echo "Utenti creati: $a"

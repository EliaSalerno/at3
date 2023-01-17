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
		touch "/home/$ut@issgreppi.it/.confcl"
		echo "  Classe: $j">>"/home/$ut@issgreppi.it/.confcl"
		echo "  Utente: $ut">>"/home/$ut@issgreppi.it/.confcl"
		chmod 500 "/home/$ut@issgreppi.it/.confcl"
		if [ $j = "5ia" || $j = "5ib" ];then
			mkdir "/home/$ut@issgreppi.it/progetto"
		fi
	done
done
chmod 750 /home/*
echo "Utenti creati: $a"

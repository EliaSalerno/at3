a=0
for i in $(cat utenza);
do
	ut=${i%-*}
	ps=${i#*-}
	useradd -m "$ut@issgreppi.it"
	echo -e "$ut@issgreppi.it:$ps" | chpasswd
	a=$((a+1))
done
chmod 750 /home/*
echo "Utenti creati: $a"

for i in $(cat utenza);
do
	ut=${i%-*}
	ps=${i#*-}
	useradd -m "$ut@issgreppi.it"
	echo -e "$ut@issgreppi.it:$ps" | chpasswd
done
ls -l /home
chmod 750 /home/*

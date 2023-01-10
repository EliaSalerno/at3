for i in $(ls /home);
do
	userdel -f $i
	rm -R "/home/$i"
done

for j in $(ls /utenza);
do
	if [ ${j%i*} = 5 ];then
		for i in $(cat utenza/$j);
		do
			cd "/home/$i"
			touch report
			git log --all --oneline --decorate --graph > report
			mv report "/app/progetto/$j_$i"
		done
	fi
done

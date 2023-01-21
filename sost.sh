for i in $(ls utenza/);
do
	touch /utenza/temp
	chmod 777 /utenza/temp
	for j in $(cat utenza/$i);
	do
		if [ ${j%-*} = $1 ];then
			ps=${j#*-}
			echo "$1-$ps">>/utenza/temp
		else
			echo $j>>/utenza/temp
		fi
	done
	rm /utenza/$i
	mv /utenza/temp /utenza/$i
done

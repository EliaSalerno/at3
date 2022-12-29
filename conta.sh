a=0
for i in $(ls /home);
do
	a=$((a+1))
done
echo "Utenze create: $a"

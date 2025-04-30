n=1000

redis-cli DBSIZE >/dev/null
if ! [ $? = 0 ]
	while : 
	do 
		for ((i=0;i<n;i++))
			do 
			redis-cli LPUSH mafile $RANDOM >/dev/null
			sleep 3
			done
	done
then
	exit



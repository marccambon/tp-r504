tresh= 32000
while : 
do
	nb=$(redis-cli --raw LLEN mafile)
	if [ $nb -gt 0 ]
	then
		value=$(redis-cli --raw RPOP mafile)
		nb=$(redis-cli --raw LLEN mafile)
		if ! ["$value" =""]
		then
			if [$value -gt $tresh]
			then
				
			fi
		fi
	fi
done


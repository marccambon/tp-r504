nmap -oG test.txt 172.16.0.0/24

grep Ports test.txt > tmp.txt

FILE=tmp.txt

while read -r LINE
do
    ip=$(awk '{print $2}' <<<"$LINE")
    ports=$(grep -o "open" <<< "$LINE" | wc -l)
    echo "$ip,$ports" >> ips_openports.csv
done < "$FILE"

rm test.txt tmp.txt

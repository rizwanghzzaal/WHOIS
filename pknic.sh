#Version 1.0
#Websouls Support Team
#!/bin/bash
cat /home/scripts/domains | while read output
do
var="$output"
IFS='.' read var1 var2 <<< "$var"
echo "############################################################" >> /home/scripts/results.txt
echo "$var1.$var2" >> /home/scripts/results.txt
result=$(curl -s -A 'Mozilla/4.0'  "pakwhois.com/php/viewWhois.php?Name=${var1}&Domain=.${var2}" | html2text -ascii -nobs -style compact -width 500 | tail -n 13  | gre$
echo "$result" >> /home/scripts/results.txt
done

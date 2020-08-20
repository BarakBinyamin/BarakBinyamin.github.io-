#This scripts adds an " OR" at the end of every line in a file
#This script was intended to make it easey to make a filter for a large amount of emails at a time
#Example: For a class list
#Visit https://www.laptopmag.com/articles/filter-mail-gmail to learn about filtering gmail

#usage: Bash EmailListFiler.sh EMAILLISTFILE

EmailList=$1

sed -i s/$/,/ $EmailList #add "," to end of every file
sed 's/,/ /g' $EmailList > "EmailListOR.txt" #replace every "," with space & redirect to new file
sed -i s/$/OR/ "EmailListOR.txt" #add "OR" to end of every file of new file

echo Look for the "EmailListOR.txt" in your folder

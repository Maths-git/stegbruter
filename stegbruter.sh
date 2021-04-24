filename=$1
passwords=$2

while read line;
do
	steghide extract -sf $filename \-p $line 2>/dev/null && echo "Password : $line"
done < $passwords

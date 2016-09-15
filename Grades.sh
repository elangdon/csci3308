#!/bin/bash
# Emma Langdon

buffer=""

while read line
do
        a=`echo $line | cut -d ' ' -f4`
        b=`echo $line | cut -d ' ' -f5`
        c=`echo $line | cut -d ' ' -f6`
        average=`echo "($a+$b+$c)/3" | bc`
        ID=`echo $line | cut -d ' ' -f1`
        first=`echo $line | cut -d ' ' -f2`
        last=`echo $line | cut -d ' ' -f3`
        line2store=`echo $average [$ID] $last, $first`
        buffer=$buffer\\n$line2store
done < $1

echo -e $buffer | sort -k3 -k4

exit 0


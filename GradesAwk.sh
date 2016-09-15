#!/bin/bash
# Emma Langdon

file=$1
cat $file | sort -k3,3 -k2,2 | awk '{sum=0;{for (i=4;i<=6;i++) {sum=sum+$i}print sum/3, "["$1"]", $3",", $2;}}'


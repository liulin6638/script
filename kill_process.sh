#! /bin/bash

process_id=`ps -ef | grep $1 | grep -v "grep" | awk '{print $2}'`
echo $process_id

for id in $process_id
do
    kill -9 $id  
    echo "killed $id"  
done
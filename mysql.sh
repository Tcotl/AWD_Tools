#!/bin/bash
user='root'
password='root'
db_name="mysql"
for i in `seq 1 255`
do
    host="192.168.59.$i"
    SQL="$1"
    mysql -u"$user" -p"$password" -h"$host" -D"$db_name" -B -e "$SQL"      
done
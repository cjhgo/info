echo ''>/tmp/logs
ssh me "rm -rf/tmp/dump.tar.gz;\
mongodump -o /tmp/dump;\
tar -zcvf /tmp/dump.tar.gz /tmp/dump;\
rm -rf /tmp/dump" 2>>/tmp/logs 1>>/tmp/logs

scp me:/tmp/dump.tar.gz /tmp/  1>>/tmp/logs
tar -zxvf /tmp/dump.tar.gz -C /tmp 1>>/tmp/logs
mv /tmp/tmp/dump /tmp/dump 
rm -rf /tmp/tmp 
mongorestore --dir=/tmp/dump --drop 2>>/tmp/logs
rm -rf /tmp/dump 
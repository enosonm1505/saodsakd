#/bin/bash
a="evalo_"$(date +%Y%m%d"_"%H%M%S)".sql.gz"
echo $a
da=$(date +%y%m%d)
echo $da
mysqldump -u root -p'dAFD8$237Ecvg@OzDZ0Dn0wfZ@HH' evalo | gzip > /root/bak/172.31.13.99/172.31.13.99/"$(date +%y%m%d)"/$a
aws s3 sync /root/bak/172.31.13.99/ s3://sms-mysql-backup-evalo/
asd=$(ls /root/bak/172.31.13.99/172.31.13.99/$da | grep $a)
echo $asd
if gzip -t /root/bak/172.31.13.99/172.31.13.99/"$da"/"$asd" ; then
    echo 'file is ok'
else
    echo 'file is corrupt'
    python3 e.py
fi

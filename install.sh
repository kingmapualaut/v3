#/bin/bash
apt-get update

apt-get install apache2-utils squid3 -y

# You can edit this line to parsing auth from params or user input
htpasswd -b -c /etc/squid/passwd USERNAME PASSWORD

wget -O /etc/squid/squid.conf https://raw.githubusercontent.com/kingmapualaut/v3/main/squid.conf --no-check-certificate

touch /etc/squid/blacklist.acl

service squid restart

update-rc.d squid defaults

echo DONE

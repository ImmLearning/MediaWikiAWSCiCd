#!/bin/sh
#to run the script type 
chkconfig httpd on
chkconfig mysqld on
cd /home/username
wget https://releases.wikimedia.org/mediawiki/1.33/mediawiki-1.33.1.tar.gz
wget https://releases.wikimedia.org/mediawiki/1.33/mediawiki-1.33.1.tar.gz.sig
gpg --verify mediawiki-1.33.1.tar.gz.sig mediawiki-1.33.1.tar.gz
cd /var/www
tar -zxf /home/username/mediawiki-1.33.1.tar.gz
ln -s mediawiki-1.33.1/ 

cd /var/www
ln -s mediawiki-1.33.1/ mediawiki
chown -R apache:apache /var/www/mediawiki

#apache configuration setting
#replacing first occurance of html with mediawiki
#Documentroot /var/www/html to var/www/mediawiki
sudo awk 'NR==1,/html/{sub(/mediawiki/, "html")} 1' /etc/httpd/conf/httpd.conf

sudo service httpd restart

#firewall settings 
sudo yum install -y system-config-firewall-tui

firewall-cmd --add-service=http
firewall-cmd --add-service=https

#SE disable
getenforce
echo -e " if se linux is enabled (by default) please disable \n edit file \n vi /etc/selinux/config"

echo -e "setting completed"

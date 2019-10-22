#readme - after procuring infra side using cloud formation execute below command
#
sudo yum install -y httpd php php-mysql php-gd php-xml mysql-server mysql
sudo yum -y update
sudo service mysqld start
mysql_secure_installation
echo -e "now perform the below steps "
echo -e "DB login using \n mysql -u root -p /n create wiki user using \n CREATE USER 'wiki'@'localhost' IDENTIFIED BY 'Password'; \n create DATABASE \n CREATE DATABASE wikidatabase; \n Grant privileges to newly created DB using command \n GRANT ALL PRIVILEGES ON wikidatabase.* TO 'wiki'@'localhost'; \n FLUSH PRIVILEGES; \n now display database created using \n SHOW DATABASES;\n To display what has been granted use command \n SHOW GRANTS FOR 'wiki'@'localhost'; \n now exit \n exit"

echo -e "once above steps have been completed run second script "


#!/bin/bash
# Ask the user for their name
echo Setting up laravel dev environment?

sudo apt-get update

# install git
sudo apt-get install -y git

# Add A Few PPAs To Stay Current

sudo apt-get install -y --force-yes software-properties-common

sudo apt-add-repository ppa:nginx/development -y
sudo apt-add-repository ppa:chris-lea/redis-server -y
#apt-add-repository ppa:ondrej/apache2 -y
sudo apt-add-repository ppa:ondrej/php -y

echo " Installing php"
sudo apt-get -y install php7.1
sudo apt-get -y install curl mcrypt php7.1-mysql php7.1-mcrypt php7.1-curl php7.1-json php7.1-mbstring php7.1-gd php7.1-intl php-gettext \  
php7.1-pgsql php7.1-sqlite3 php7.1-gd \
php7.1-curl php7.1-memcached \
php7.1-imap php7.1-mysql php7.1-mbstring \
php7.1-xml php7.1-zip php7.1-bcmath php7.1-soap \
php7.1-intl php7.1-readline

echo -e "\e[96m Installing mysql server \e[39m"
echo -e "\e[93m User: root, Password: root \e[39m"

# Install MySQL Server in a Non-Interactive mode. Default root password will be "root"
echo "mysql-server-5.7 mysql-server/root_password password root" | sudo debconf-set-selections
echo "mysql-server-5.7 mysql-server/root_password_again password root" | sudo debconf-set-selections
sudo apt-get -y install mysql-server-5.7


# Download and install composer 
echo -e "\e[96m Installing composer \e[39m"
# Notice: Still using the good old way
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer


# Check php version
php -v
# Check mysql version
mysql --version

# Check if php is working or not
php -r 'echo "\nYour PHP installation is working fine.\n";'

# Fix composer folder permissions
#sudo chown -R $USER $HOME/.composer

# Check composer version
composer --version

echo -e "\e[92m Open http://localhost/ to check if nginx is working or not. \e[39m"

# Clean up cache
sudo apt-get clean

sudo apt-get install -y --force-yes nginx php7.1-fpm


#install node js 
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

# install build essentials for npm
sudo apt-get install -y build-essential

#install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo -e "\e[92m Npm and yarn installed successfully \e[39m"

echo -e "\e[92m Installing sqlite \e[39m"
# install sqlite
sudo apt-get install -y sqlite3


# Install & Configure Redis Server

sudo apt-get install -y redis-server
sudo sed -i 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis/redis.conf
sudo service redis-server restart
# Install & Configure Memcached

sudo apt-get install -y memcached
sudo sed -i 's/-l 127.0.0.1/-l 0.0.0.0/' /etc/memcached.conf
sudo service memcached restart
# Install & Configure Beanstalk

sudo apt-get install -y --force-yes beanstalkd
sudo sed -i "s/BEANSTALKD_LISTEN_ADDR.*/BEANSTALKD_LISTEN_ADDR=0.0.0.0/" /etc/default/beanstalkd
sudo sed -i "s/#START=yes/START=yes/" /etc/default/beanstalkd
sudo /etc/init.d/beanstalkd start

echo $'\e[1;32m'Dev Server Setup completed...$'\e[0m'
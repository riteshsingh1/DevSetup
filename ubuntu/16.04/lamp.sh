
# Ubuntu 16.04 PHP Dev Server Setup
# for executing type - bash lamp.sh
# Script should auto terminate on errors

echo -e "\e[96m Adding PPA  \e[39m"
sudo add-apt-repository -y ppa:ondrej/apache2
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

echo -e "\e[96m Installing apache  \e[39m"
sudo apt-get -y install apache2

echo "Installing CURL"
sudo apt-get -y install curl

echo -e "\e[96m Installing php  \e[39m"
sudo apt-get -y install php7.1 libapache2-mod-php7.1 

# Install some php exts
sudo apt-get -y install mcrypt php7.1-mysql php7.1-mcrypt php7.1-curl php7.1-json php7.1-mbstring php7.1-gd php7.1-intl php-gettext php7.1-xml php7.1-zip
#sudo apt-get -y install php-xdebug
sudo phpenmod mcrypt
sudo phpenmod curl

echo "Installing Mysql Server"
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

# Check apache version
apachectl -v

# Check mysql version
mysql --version

# Check if php is working or not
php -r 'echo "\nYour PHP installation is working fine.\n";'

# Fix composer folder permissions
#sudo chown -R $USER $HOME/.composer

# Check composer version
composer --version

echo -e "\e[92m Open http://localhost/ to check if apache is working or not. \e[39m"

# Clean up cache
sudo apt-get clean

# Warning!!! Don't add this PPA if you are running php v5.6
sudo add-apt-repository -y ppa:nijel/phpmyadmin
sudo apt-get update

echo -e "\e[93m User: root, Password: root \e[39m"

# Restart apache server
sudo service apache2 restart


echo -e "\e[92m Installing sqlite \e[39m"
# install sqlite
sudo apt-get install sqlite3

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

echo -e "\e[92m  Dev Setup Completed. If you have facing any issue please report at: https://github.com/riteshsingh1/DevSetup/issues \e[39m"
#!/usr/bin/env bash
#initial update and basics (mostly already installed by default)
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y language-pack-en-base
sudo apt-get install -y software-properties-common
sudo apt-get install -y curl vim git wget
sudo apt-get install -y sqlite3
sudo apt-get install -y zip unzip

#MySQL (5.7 default in Ubuntu 16)
sudo apt install -y mysql-server mysql-client

#PHP 7.0
sudo apt-get install -y php7.0
sudo apt-get install -y php7.0-mysql php7.0-mbstring php7.0-dom
php -v

#composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer --version

#nvm
sudo apt-get install -y build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
# Once this is donde you have to restart your terminal session in order to get nvm command to work
# then you can use: 
# nvm install node 
# to install the latest release version of NodeJS

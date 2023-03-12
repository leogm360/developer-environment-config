#!/bin/sh

POSTGRES_USER=$USER
POSTGRES_USER_PASSWORD='123456789'
POSTGRES_DATABASE=$USER

# add postgresql repository to apt list
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# download postgresql keys to apt keyring
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# go to apt list dir
cd /etc/apt/sources.list.d/ || exit 1

# remove uncompatible postgresql keyring
sudo rm -f pgdg.list

# recreate postgresql keyring
sudo touch pgdg.list

# dump compatible keyring to postgresql keyring
echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" | sudo tee -a pgdg.list

# update apt index and install postgresql
sudo apt update && sudo apt install postgresql -y

# go to postgres dir
cd ~postgres/ || exit 1

# directs sql query to postgresql cli
sudo -u postgres psql <<query
  CREATE USER $POSTGRES_USER SUPERUSER CREATEROLE CREATEDB;
  ALTER USER $POSTGRES_USER PASSWORD $POSTGRES_USER_PASSWORD;
  CREATE DATABASE $POSTGRES_DATABASE;
  ALTER DATABASE $POSTGRES_DATABASE OWNER TO $POSTGRES_USER;
query

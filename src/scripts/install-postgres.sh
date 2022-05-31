#!/bin/sh

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt update && sudo apt install postgresql -y

cd /etc/apt/sources.list.d/ || echo 'ERROR IN CHANGING DIRECTORIES'

sudo rm -f pgdg.list

sudo touch pgdg.list

echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" | sudo tee -a pgdg.list

cd ~postgres/ || echo 'ERROR IN CHANGING DIRECTORIES'

sudo -u postgres psql <<querie
  CREATE USER $USER SUPERUSER CREATEROLE CREATEDB;
  ALTER USER $USER PASSWORD '197328$%Leo';
  CREATE DATABASE $USER;
  ALTER DATABASE $USER OWNER TO $USER;
querie

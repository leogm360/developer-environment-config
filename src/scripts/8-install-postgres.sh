#!/usr/bin/env bash

CWD=$PWD
POSTGRES_USER="$USER"
POSTGRES_USER_PASSWORD='123456789'
POSTGRES_DATABASE="$USER"

echo -e "$BOLD_LIGHT_BLUE\nSTART POSTGRESQL INSTALL...\n$NO_COLOR"

# add postgresql repository to apt list
sudo sh -c 'echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# download postgresql keys to apt keyring
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# update apt index and install postgresql
sudo apt update && sudo apt install postgresql -y

# got to dir where postgres user has permissions
cd ~postgres/ || throw 5

# directs sql query to postgresql cli
sudo -u postgres psql <<query
  CREATE USER $POSTGRES_USER SUPERUSER CREATEROLE CREATEDB;
  ALTER USER $POSTGRES_USER PASSWORD $POSTGRES_USER_PASSWORD;
  CREATE DATABASE $POSTGRES_DATABASE;
  ALTER DATABASE $POSTGRES_DATABASE OWNER TO $POSTGRES_USER;
query

# go back to scripts directory
cd "$CWD" || throw 5

echo -e "$BOLD_LIGHT_BLUE\nEND POSTGRESQL INSTALL...\n$NO_COLOR"

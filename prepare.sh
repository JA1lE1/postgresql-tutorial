#!/bin/sh
wget https://pg.sjk66.com/static/attach/download-sample-database/dvdrental.zip
apt-get update
apt-get install -y zip
apt-get install -y postgresql
unzip dvdrental.zip
sudo su postgres

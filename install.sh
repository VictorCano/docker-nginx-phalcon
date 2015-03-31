#!/bin/bash

curl -sSL https://get.docker.com/ | sh

bash -c "`curl -sL https://raw.githubusercontent.com/michaelsauter/crane/master/download.sh`" && sudo mv crane /usr/local/bin/crane

mkdir -p /var/www/public

apt-get install git -y
git clone https://github.com/Cazamba/docker-nginx-phalcon.git

cd ./docker-nginx-phalcon

crane lift

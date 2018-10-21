#!/bin/bash

# Install nginx, copy conifg, and run
sudo apt install nginx
sudo cp containers.conf /etc/nginx/conf.d/
sudo systemctl enable nginx
sudo systemctl start nginx

# Start containers
docker run -d -p 8080:80 suranc/images:0.6
docker run -d -p 8081:80 suranc/ytlnd:0.1
docker run -d -p 8082:80 suranc/ytrnd:0.1

#!/bin/bash

# Update the system
sudo yum update -y

# Install Apache HTTP Server (httpd)
sudo yum install httpd -y

# Install Git
sudo yum install git -y


# Clone the repository
git clone https://github.com/devopsmike-01/Devopswithmike-ecommerce-site.git 

# Copy the files inside the cloned folder to the desired location
sudo cp -r Devopswithmike-ecommerce-site/server1/* /var/www/html/

# Start and enable the HTTP server
sudo systemctl start httpd
sudo systemctl enable httpd

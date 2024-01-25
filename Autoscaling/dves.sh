#!/bin/bash
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
aws s3 cp --recursive s3://dves /home/ec2-user/bucket
rm -rf /usr/share/nginx/html/index.html
cp /home/ec2-user/bucket/* /usr/share/nginx/html/
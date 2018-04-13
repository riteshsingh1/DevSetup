#!/bin/bash
echo "Enter the domain name for configuration ?"

read domain

echo "Enter the root path e.g. /var/www/mydomain.com"

read rootpath

block="
server {
        listen 80;
        listen [::]:80;

        root $rootpath;
        index index.php index.html index.htm index.nginx-debian.html;

        server_name $domain www.$domain;

       location / {
            try_files $uri $uri/ /index.php?$query_string;
        }

        # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
        #
        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
        #
        #       # With php7.0-cgi alone:
        #       fastcgi_pass 127.0.0.1:9000;
        #       # With php7.0-fpm:
                fastcgi_pass unix:/run/php/php7.1-fpm.sock;
        }

        # deny access to .htaccess files, if Apache's document root
        # concurs with nginx's one
        #
        location ~ /\.ht {
                deny all;
        }
}
"
echo "$block" > "/home/ritesh/todo/devOPS/$domain"".conf"
sudo ln -fs "/etc/nginx/sites-available/$domain"".conf" "/etc/nginx/sites-enabled/$domain"".conf"

echo "Domain $domain is configured and enabled."

echo "Restarting Nginx...."

sudo systemctl restart nginx

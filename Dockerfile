FROM nginx

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak

RUN test -e /var/www/html/index || mkdir -p /var/www/html/index

COPY server.conf /etc/nginx/conf.d/

COPY index /var/www/html/index
FROM nginx

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

ADD nginx.conf /etc/nginx/
ADD symfony.conf /etc/nginx/conf.d/

WORKDIR /var/www
VOLUME /var/www

EXPOSE 80
FROM php:7.1-apache
RUN mkdir /var/www/html/MlMobileDjango/
WORKDIR /var/www/html/MlMobileDjango
ADD . /var/www/html/MlMobileDjango
EXPOSE 80
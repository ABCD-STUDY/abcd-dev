FROM php:7.0-apache
# RUN apt-get update --fix-missing && \
#   DEBIAN_FRONTEND="noninteractive" apt-get install -y language-pack-en-base software-properties-common
# RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php && \
#   apt-get update --fix-missing && \
#   DEBIAN_FRONTEND="noninteractive" apt-get install -y
# RUN service apache2 restart

COPY ./index.php /var/www/html/index.php
# COPY apprise/ /var/www/html/apprise/

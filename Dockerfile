FROM php:7.0.33-apache

# PHP info page
COPY index.php /var/www/html/index.php

# Copy over select ABCD applications
# Requires a clone of html to be on the local host
COPY html /var/www/html

# Configure Apache2 setup to allow auto startup
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Install python and dependencies
RUN apt-get update && apt-get install python python-pip -y
RUN pip install pandas jinja2

# Entrypoint to start Apache2
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["sh", "/usr/local/bin/entrypoint.sh"]

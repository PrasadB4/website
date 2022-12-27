FROM ubuntu

RUN apt update && \
    apt upgrade -y && \
    apt install apache2 -y
    
ADD . /var/www/html

ENTRYPOINT apachectl -D FOREGROUND


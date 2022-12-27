FROM ubuntu

RUN sudo apt update && \
    sudo apt upgrade -y && \
    sudo apt install apache2 -y

ADD . /var/www/html

ENTRYPOINT apachectl -D FOREGROUND


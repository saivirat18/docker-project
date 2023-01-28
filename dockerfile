FROM ubuntu
RUN apt update -y
RUN apt upgrade -y
RUN apt install apache -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D","FOREGROUND"]

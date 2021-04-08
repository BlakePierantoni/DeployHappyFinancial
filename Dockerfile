FROM ubuntu:18.04
RUN apt-get update 
RUN apt install -y apache2 
RUN apt-get clean 
EXPOSE 80 
RUN rm /var/www/html/index.html
COPY index.php /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
RUN cat /etc/apache2/ports.conf
RUN service apache2 restart
RUN cat /var/www/html/index.php
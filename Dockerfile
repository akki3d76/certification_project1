FROM devopsedu/webapp

RUN apt-get update -y

RUN apt-get install -y apache2



#Install PHP Modules

RUN apt-get install -y php 

#Copy Application Files

RUN rm -rf /var/www/html/*

COPY website /var/www/html/



#Open port 80

EXPOSE 8060



#Start Apache service

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]



FROM centos

RUN  yum install httpd -y 

COPY  *  /var/www/html

WORKDIR  /var/www/html

EXPOSE  80

ENTRYPOINT  [ "/usr/sbin/httpd" ]

CMD  [ "-D" , "FOREGROUND" ]



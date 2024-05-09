FROM amazonlinux:latest

RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

RUN cd /var/www/html

RUN wget https://github.com/srushti84/discover-employye/archive/refs/heads/main.zip

RUN unzip main.zip

RUN cp -r Wool-alert-main/* /var/www/html/

RUN rm -rf Wool-alert-main main.zip

EXPOSE 80


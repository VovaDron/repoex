FROM ubuntu:22.04
LABEL autor=DronovVladimir
RUN apt-get update
RUN apt-get install nginx -y
WORKDIR /var/www/html/
COPY files/index.html .
COPY files/script.sh /opt/script.sh
RUN chmod +x /opt/script.sh
ENV OWNER=vovad
ENV TYPE=demo
EXPOSE 80
CMD ["/opt/script.sh"]

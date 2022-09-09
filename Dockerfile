FROM httpd:2.4.46
LABEL maintainer="Natalia Granato"
ENV HTTPD_VERSION 1.0.0
COPY ./app/index.sh /usr/local/apache2/cgi-bin
COPY ./app/info.sh /usr/local/apache2/cgi-bin
RUN chmod +x /usr/local/apache2/cgi-bin/index.sh
RUN chmod +x /usr/local/apache2/cgi-bin/info.sh
CMD httpd-foreground -c "LoadModule cgid_module modules/mod_cgid.so"
EXPOSE 80

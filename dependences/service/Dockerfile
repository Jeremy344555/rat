FROM httpd:2.4

COPY httpd-onec.conf /usr/local/apache2/conf/extra/httpd-onec.conf
COPY default.vrd /usr/local/apache2/htdocs/rat/default.vrd

RUN echo 'Include conf/extra/httpd-onec.conf' >> /usr/local/apache2/conf/httpd.conf
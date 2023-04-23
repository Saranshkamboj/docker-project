FROM      redhat/ubi9
RUN       yum install wget unzip httpd vim -y
ADD       https://www.free-css.com/assets/files/free-css-templates/download/page290/cryptop.zip /var/www/html
WORKDIR   /var/www/html
RUN       unzip cryptop.zip
RUN       rm -f cryptop.zip
RUN       mv cryptop-html/* .
EXPOSE    80
CMD       ["/usr/sbin/httpd", "-DFOREGROUND"]

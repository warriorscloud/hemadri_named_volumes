FROM centos
MAINTAINER Hemadri<hemadri@gmail.com>
WORKDIR /
RUN yum install -y epel-release && \
    yum install -y httpd httpd-tools && \
    yum clean all
ARG user_name=root
VOLUME /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]





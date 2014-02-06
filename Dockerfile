FROM fogengine/ubuntu
MAINTAINER Matthew Schulkind <matt@fogengine.com>

RUN apt-get update
RUN apt-get -y install wget ca-certificates
RUN echo 'deb http://ppa.launchpad.net/nginx/stable/ubuntu precise main' > /etc/apt/sources.list.d/nginx.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C300EE8C
RUN apt-get update
RUN apt-get install -y nginx

CMD ["/usr/sbin/nginx", "-c", "/data/nginx.conf"]

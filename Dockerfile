FROM perl:latest
MAINTAINER Rusty Bower

# install Data::Dumper
RUN cpanm Data::Dumper

# download and install pisg
RUN wget -O /tmp/pisg-0.73.tar.gz http://prdownloads.sourceforge.net/pisg/pisg-0.73.tar.gz
RUN tar zxvf /tmp/pisg-0.73.tar.gz -C /opt

# ports and volumes
VOLUME /nginx /logs /cache /config

CMD ["/opt/pisg-0.73/pisg", "-co", "/config/pisg.cfg", "-o", "/nginx/index.html"]

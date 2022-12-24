FROM perl:latest
MAINTAINER Rusty Bower

# install Data::Dumper
RUN cpanm Data::Dumper

# download and install pisg
WORKDIR "/opt"
RUN git clone https://github.com/PISG/pisg.git

# ports and volumes
VOLUME /nginx /logs /cache /config

CMD ["/opt/pisg/pisg", "-co", "/config/pisg.cfg", "-o", "/nginx/index.html"]

FROM ubuntu
MAINTAINER Rusty Bower

# install packages
RUN apt-get update
RUN apt-get install -y cron wget

# download and install pisg
RUN wget -O /root/pisg-0.73.tar.gz http://prdownloads.sourceforge.net/pisg/pisg-0.73.tar.gz
RUN tar zxvf /root/pisg-0.73.tar.gz -C /root

# copy crontab into place

# start cron
RUN service cron start

# cleanup
RUN apt-get clean
RUN rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

# add local files
# COPY root/ /

# ports and volumes
VOLUME /nginx /logs /cache

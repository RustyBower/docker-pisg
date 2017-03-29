FROM ubuntu
MAINTAINER Rusty Bower

# global environment settings
ENV DEBIAN_FRONTEND="noninteractive" \

# install packages
RUN \
 apt-get update && \
 apt-get install -y \
        cron \
        wget && \

# download and install pisg
 wget -O /root/pisg-0.73.tar.gz http://prdownloads.sourceforge.net/pisg/pisg-0.73.tar.gz && \
 tar zxvf /root/pisg-0.73.tar.gz -C /tmp && \

# copy crontab into place

# start cron
 service cron start && \

# cleanup
 apt-get clean && \
 rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*

# add local files
# COPY root/ /

# ports and volumes
VOLUME /nginx /logs /cache

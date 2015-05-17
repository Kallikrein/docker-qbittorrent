FROM ubuntu

MAINTAINER Thomas Charlat

RUN apt-get update && \
    apt-get install -y qbittorrent-nox && \
    apt-get clean

#COPY qBittorrent.conf /build/qBittorrent.conf

VOLUME /root/.config/qBittorrent
VOLUME /root/.local/share/data/qBittorrent
VOLUME /root/Downloads

# useless since we open -p
EXPOSE 8080
EXPOSE 6881
EXPOSE 1337

COPY qbittorrent /etc/init.d/
RUN chmod 755 /etc/init.d/qbittorrent

COPY qbittorrent.* /root/.config/qBittorrent/ssl/
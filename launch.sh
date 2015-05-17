#!/bin/bash

sudo docker run -it \
    -p 8080:8080 \
    -p 6881:6881 \
    -p 1337:1337 \
    -v /data/qbittorrent/downloads:/root/Downloads \
    kallikrein/qbittorrent:0.4

#     -v /data/qbittorrent/config:/root/.config/qBittorrent \
#     -v /data/qbittorrent/torrents:/root/.local/share/data/qBittorrent \
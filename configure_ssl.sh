#!/bin/bash

openssl genrsa -des3 -out qbittorrent.key 1024 && \
openssl req -new -key qbittorrent.key -out qbittorrent.cert
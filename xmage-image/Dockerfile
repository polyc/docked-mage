FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:1

RUN apt-get update && apt-get install -y \
    openjdk-8-jre \
    xvfb \
    fluxbox \
    tigervnc-standalone-server \
    novnc \
    websockify \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /xmage

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 6080: noVNC web interface | 17171 & 17179: XMage Server ports
EXPOSE 6080 17171 17179

ENTRYPOINT ["/entrypoint.sh"]
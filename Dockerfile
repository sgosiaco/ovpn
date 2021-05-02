FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get install -y nano net-tools openvpn dante-server

COPY danted.conf /etc/danted.conf
COPY config.ovpn / 
COPY entry.sh /

EXPOSE 1080

ENTRYPOINT ["/bin/bash", "/entry.sh"]


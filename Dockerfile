FROM debian:stretch

RUN apt-get update && apt-get install -y curl gnupg && echo "deb http://download.opensuse.org/repositories/home:/uibmz:/opsi:/4.1:/stable/Debian_9.0/ /" > /etc/apt/sources.list.d/opsi.list && \
curl -L https://download.opensuse.org/repositories/home:uibmz:opsi:4.1:stable/Debian_9.0/Release.key | apt-key add - && apt-get update && apt-get install -y opsi-utils && apt-get clean && rm -rf /var/lib/apt/lists/*

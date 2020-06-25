FROM node:12.18.1-slim AS front_dev 

RUN apt update && \
    apt upgrade && \
	apt install -y wget libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev autoconf asciidoc xmlto docbook2x make gcc && \
	wget https://github.com/git/git/archive/v2.27.0.tar.gz && \
	tar -zxf v2.27.0.tar.gz && \
	cd git-2.27.0 && \
	make configure && \
	./configure --prefix=/usr && \
	make all doc info && \
	mv git /usr/local/bin/

ENV PROJECT_ROOTDIR /app/client

WORKDIR $PROJECT_ROOTDIR

RUN yarn global add @vue/cli


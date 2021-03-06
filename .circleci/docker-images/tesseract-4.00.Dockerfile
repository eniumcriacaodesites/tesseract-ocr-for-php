FROM debian:sid
MAINTAINER thiagoalessio <thiagoalessio@me.com>

RUN apt-get -y update && \
	apt-get -y install curl git-core unzip php-cli php-xdebug php-xml php-curl \
	tesseract-ocr=4.00* tesseract-ocr-deu tesseract-ocr-jpn tesseract-ocr-spa \
	--no-install-recommends

RUN curl -sko- https://getcomposer.org/installer | \
	php -- --quiet --filename=composer --install-dir=/usr/local/bin

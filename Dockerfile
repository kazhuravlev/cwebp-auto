FROM ubuntu:18.04

RUN apt update && \
    apt install -y \
        wget \
        cmake \
        libwebpdemux2 \
        libtiff-dev \
        libwebp-dev

RUN wget https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.0.3.tar.gz

RUN tar -xzf libwebp-1.0.3.tar.gz

RUN cd libwebp-1.0.3 && \
    ./configure && \
    make && \
    make install

RUN mkdir -p /images

WORKDIR /images
VOLUME ["/images"]

RUN apt install -y libwebp-dev webp
COPY ./cwebp-auto.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/cwebp-auto.sh

CMD cwebp-auto.sh


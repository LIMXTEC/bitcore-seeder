# Copyright (c) 2018 The BitCore BTX Core Developers
FROM debian:jessie-slim

WORKDIR /usr/src/bitcore-seeder

RUN apt-get update && \
    apt-get install -y build-essential \
                       libboost-all-dev \
                       libssl-dev
                       
RUN mkdir -p /usr/src/bitcore-seeder

ADD . /usr/src/bitcore-seeder

RUN make

ENTRYPOINT ["/usr/src/bitcore-seeder/dnsseed"]

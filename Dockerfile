FROM ubuntu:latest
MAINTAINER Kazuya Yokogawa "yokogawa-k@klab.ocm"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
    && apt-get -y install \
    siege \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists 

ENTRYPOINT ["siege"]
CMD ["--help"]


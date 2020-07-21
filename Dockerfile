FROM ubuntu:20.04
LABEL MANTAINER "Saul O. <@sortigoza>"
LABEL REPO "https://github.com/sortigoza/docker-siege.git"

ENV DEBIAN_FRONTEND noninteractive
RUN apt update && \
    apt --no-install-recommends -y install \
        siege && \
    apt clean && \
    rm -rf /var/lib/apt/lists

ENTRYPOINT ["siege"]
CMD ["--help"]

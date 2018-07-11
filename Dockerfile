FROM alpine:latest

ENV MAILCATCHER_VERSION=0.6.5
ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TIMEZONE="UTC"

RUN apk add --update --no-cache \
    ca-certificates \
    libstdc++ \
    ruby \
    ruby-irb \
    ruby-rdoc \
    sqlite-libs \
    yaml \
 && apk add --update --no-cache --virtual .build-deps make g++ gcc sqlite-dev ruby-dev \
 && gem install mailcatcher -v $MAILCATCHER_VERSION \
 && apk del .build-deps

EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]

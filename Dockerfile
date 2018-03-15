FROM alpine:latest

LABEL maintainer="Oanh Nguyen <oanhnn.bk@gmail.com>"

ARG BUILD_DATE
ARG VCS_REF
ARG MAILCATCHER_VERSION=0.6.5

LABEL org.label-schema.build-date=${BUILD_DATE} \
	  org.label-schema.vcs-url="https://github.com/oanhnn/docker-alpine-mailcatcher.git" \
	  org.label-schema.vcs-ref=${VCS_REF} \
	  org.label-schema.schema-version="1.0.0-rc.1" \
	  org.label-schema.version=${RETHINKDB_VERSION} \
	  org.label-schema.description="Alpine based MailCatcher image"

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
 && apk add --update --no-cache -t .build-deps make g++ gcc sqlite-dev ruby-dev \
 && gem install mailcatcher -v $MAILCATCHER_VERSION \
 && apk del .build-deps \
 && apk info -v --no-cache | sed 's/-r\d*$//g' | sed 's/\(.*\)-/\1 /' > /etc/manifest.txt

EXPOSE 1025 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]

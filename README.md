# oanhnn/docker-alpine-mailcatcher

[![Build Status](https://travis-ci.org/oanhnn/docker-alpine-mailcatcher.svg?branch=master)](https://travis-ci.org/oanhnn/docker-alpine-mailcatcher)
[![](https://images.microbadger.com/badges/image/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)
[![](https://images.microbadger.com/badges/version/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)
[![](https://images.microbadger.com/badges/commit/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)
[![GitHub license](https://img.shields.io/github/license/oanhnn/docker-alpine-mailcatcher.svg)](https://github.com/oanhnn/docker-alpine-mailcatcher/blob/master/LICENSE)

Repository of `oanhnn/mailcatcher` Docker image.   
Alpine based [MailCatcher](https://mailcatcher.me) image.

All installed packages (`/etc/manifest.txt`):

```text
fetch http://dl cdn.alpinelinux.org/alpine/v3.7/main/x86_64/APKINDEX.tar.gz
fetch http://dl cdn.alpinelinux.org/alpine/v3.7/community/x86_64/APKINDEX.tar.gz
busybox 1.27.2
alpine-baselayout 3.0.5
alpine-keys 2.1
libressl2.6-libcrypto 2.6.3
libressl2.6-libssl 2.6.3
zlib 1.2.11
apk-tools 2.8.2
scanelf 1.2.2
libc-utils 0.7.1
ca-certificates 20171114
libgcc 6.4.0
libstdc++ 6.4.0
libffi 3.2.1
gdbm 1.13
gmp 6.1.2
ncurses-terminfo-base 6.0_p20171125
ncurses-terminfo 6.0_p20171125
ncurses-libs 6.0_p20171125
readline 7.0.003
yaml 0.1.7
ruby-libs 2.4.3
ruby 2.4.3
ruby-irb 2.4.3
ruby-json 2.4.3
ruby-io-console 2.4.3
ruby-rdoc 2.4.3
sqlite-libs 3.21.0
musl 1.1.18
musl-utils 1.1.18
```

## Features

- [x] Base from `alpine:latest` image
- [x] Install `ruby` via package manager (`apk`)
- [x] Install `mailcatcher` via `gem`

## Requirement
- Docker Engine 1.13+

## Usage

```bash
$ docker run -d -p 1080:1080 -p 1025:1025 oanhnn/mailcatcher
```

Config smtp on `mailcatcher:1025` and admin page on `mailcatcher:1080`

## Contributing

All code contributions must go through a pull request and approved by a core developer before being merged. 
This is to ensure proper review of all the code.

Fork the project, create a feature branch, and send a pull request.

If you would like to help take a look at the [list of issues](https://github.com/oanhnn/docker-alpine-mailcatcher/issues).

## License

This project is released under the MIT License.   
Copyright © 2018 [Oanh Nguyen](https://github.com/oanhnn)   
Please see [License File](https://github.com/oanhnn/docker-alpine-mailcatcher/blob/master/LICENSE) for more information.

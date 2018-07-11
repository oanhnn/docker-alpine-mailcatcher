# oanhnn/docker-alpine-mailcatcher

[![Build Status](https://travis-ci.org/oanhnn/docker-alpine-mailcatcher.svg?branch=master)](https://travis-ci.org/oanhnn/docker-alpine-mailcatcher)
[![](https://images.microbadger.com/badges/image/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)
[![](https://images.microbadger.com/badges/version/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)
[![](https://images.microbadger.com/badges/commit/oanhnn/mailcatcher.svg)](https://microbadger.com/images/oanhnn/mailcatcher)

Repository of `oanhnn/mailcatcher` Docker image.   
Alpine based [MailCatcher](https://mailcatcher.me) image.

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

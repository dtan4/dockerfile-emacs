# Emacs Docker Image

[![Build Status](https://travis-ci.org/dtan4/dockerfile-emacs.svg)](https://travis-ci.org/dtan4/dockerfile-emacs)
[![Docker Repository on Quay.io](https://quay.io/repository/dtan4/emacs/status "Docker Repository on Quay.io")](https://quay.io/repository/dtan4/emacs)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

Docker Image for [GNU Emacs](https://www.gnu.org/software/emacs/).

## SUPPORTED TAGS

- `latest`
  - Emacs 24.5.1

## HOW TO USE

```bash
$ docker run \
    --rm \
    --it \
    quay.io/dtan4/emacs \
    emacs -nw
```

## LICENSE
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

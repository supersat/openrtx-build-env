# openrtx-build-env

A Docker build environment for the OpenRTX firmware for various
digital ham radios.

## To run:

* On the initial run: `docker run --name build-openrtx -v $(pwd):/openrtx openrtx-build-env`
* For subsequent builds: `docker start -a build-openrtx`

## To build:

* `docker build -t openrtx-build-env .`


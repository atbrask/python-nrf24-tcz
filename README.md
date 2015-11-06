#####Presenting python-nrf24-tcz
This is a script for packing the python port of maniacbug's RF24 library for NRF24L01+ radios as a TCZ extension for use on Tiny Core Linux (TCL). It is meant to be run on the target device (a Raspberry Pi running piCore in my case), but should be easy to port to any platform with available SPI and GPIO pins. It outputs a file called `python-nrf24.tcz` that contains the packaged files. Also included are the other metadata files (ie. `python-nrf24.tcz.dep`, `python-nrf24.tcz.info`, `python-nrf24.tcz.list`, and `python-nrf24.tcz.md5.txt`).

DISCLAIMER: This script has been tested on piCore 6.1. It may work with other versions of TCL, but YMMV...

#####Prerequisites
You'll need a Tiny Core Linux installation with the following extensions (and all their dependencies) installed.
* python-dev
* compile-essentials
* linux-3.18.y_api_headers
* git
* squashfs-tools
* findutils
* tcztools (download from [here](https://github.com/MSumulong/tcztools))

#####How to build
* Clone this repository by running `git clone https://github.com/atbrask/python-nrf24-tcz.git`
* Type `cd python-nrf24-tcz` and run `make`

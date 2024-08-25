# Docker for GlobalPlatformPro

[![](https://images.microbadger.com/badges/version/cirne/javacard-great-again.svg)](https://microbadger.com/images/cirne/javacard-great-again "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/cirne/javacard-great-again.svg)](https://microbadger.com/images/cirne/javacard-great-again "Get your own image badge on microbadger.com")

A docker environment to develop and install applets to a JavaCard.

## Obtaing this Docker image
### Pulling from the Docker Hub
```bash
$sudo docker pull Usasmartcard/Docker_Globalplatform
```

### Building the Docker image locally
```bash
$
$sudo docker build . -t Usasmartcard/Docker_Globalplatform
```
### Host Machine stop pcscd service
```bash
$sudo systemctl status pcscd.service pcscd pcscd.socket
$sudo systemctl stop pcscd pcscd.socket
```
## Quick Start
```bash
$sudo docker run -ti --rm  --device /dev/bus/usb Usasmartcard/Docker_Globalplatform
```

## What is installed?
This docker have instaled and configured the Java Card Development Kit 2.2.2, the pcsc lite to be able to comunicate directly with a smart card, the openjdk version 8, apache ant and the OpenSC.
### List of software:

* Openjdk version 11
* Pcsc lite
* GlobalPlatformPro
* Opensc-Yool

## Custom commands

* **gp**: Load and manage applets on compatible JavaCards from command line or from your Java project. More info on the [project page](https://github.com/martinpaljak/GlobalPlatformPro).



### Notes


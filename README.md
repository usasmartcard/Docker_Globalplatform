# Docker for GlobalPlatformPro
### Install Docker Engine on Ubuntu

https://docs.docker.com/engine/install/ubuntu/

### Pulling from the Docker Hub
```bash
$sudo docker pull sonnyyu/globalplatform:latest
```
### Building the Docker image locally
//https://docs.docker.com/engine/install/ubuntu/
```bash
//$git clone https://github.com/usasmartcard/Docker_Globalplatform/
//$cd Docker_Globalplatform
//$sudo docker build . -t sonnyyu/globalplatform
```
### Stop pcscd service at Host Machine
```bash
$sudo systemctl status pcscd.service pcscd pcscd.socket
$sudo systemctl stop pcscd pcscd.socket
$sudo systemctl disable  pcscd pcscd.socket
```
## Quick Start
```bash
$sudo docker run -ti --rm  --device /dev/bus/usb sonnyyu/globalplatform
```
## Test Reader & Card
```bash
pcsc_scan
opensc-tool -l
```
## Globalplatform Info&List
```bash
gp -info
gp -list
```
## Globalplatform Install Applet
```bash
gp -uninstall /opt/javacard/helloworld.cap
gp -install /opt/javacard/helloworld.cap
```
## Globalplatform Hello World
```bash
opensc-tool -s "00 A4 04 00 07 D0 D1 D2 D3 D4 D5 01" -s "00:CB:3F:FF:05:5C:03:5F:C1:02:00"
Using reader with a card: Gemalto PC Twin Reader 00 00
Sending: 00 A4 04 00 07 D0 D1 D2 D3 D4 D5 01
Received (SW1=0x90, SW2=0x00):
48 65 6C 6C 6F 20 57 6F 72 6C 64 21 Hello World!
Sending: 00 CB 3F FF 05 5C 03 5F C1 02 00
Received (SW1=0x90, SW2=0x00):
48 65 6C 6C 6F 20 57 6F 72 6C 64 21 Hello World!
```



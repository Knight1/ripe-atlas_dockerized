## The Important things

![](https://github.com/Knight1/ripe-atlas_dockerized/workflows/CI%20test%20pipeline/badge.svg)

Feel free to submit Pull Requests and Issues or reach out to me :-)

### Requirements

- Installed and running Docker
- Installed Docker Compose https://docs.docker.com/compose/install/
- ```docker-compose build``` and ```docker-compose up -d```


### Problems

- This is a full Linux Operating System
- The main os is running with root (id=1) but atlas.service is running with atlas (id=10042)


### Todo

 - CAP_DROP and add all needed Capabilitys
 - watchtower is useless at this stage
 - good CPU Limits
 - Autobackup RSA Key
 - Figure out what files and folders are meant to stay

# Waiting for more OS support
 - [] Change to lightweight main OS
 - [] Add Arm64 support and put it into manifest list

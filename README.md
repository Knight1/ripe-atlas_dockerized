## The Important things

Feel free to submit Pull Requests and Issues or reach out to me :-)

### Requirements

- Installed and running Docker
- Installed Docker Compose https://docs.docker.com/compose/install/
- ```docker-compose build``` and ```docker-compose up -d```


### Problems

- This is a full Linux Operating System
- The main os is running with root (id=1) but atlas.service is running with atlas (id=10042) not perfect but better then nothing :(

### Todo

 - CAP_DROP and add all needed Capabilitys
 - watchtower is useless at this stage
 - good CPU Limits
 - Autobackup RSA Key
 - Actions (Schedule, Issues & PR, Update when Upstream Package is updated)
 - make centos7 read_only

# Waiting for more OS support
 - [] Change to lightweight main OS
 - [] Add Arm64 support and put it into manifest list
 - Update to CentOS 8

# What's on this folder 
This directory contains useful tools like:
* a shell script to install Ansible to Ubuntu or Centos
* a Dockerfile to create a Docker image with Ansible 
* an Ansible playbook to update your local machine packages

# How to use

## Install Ansible to your local machine

* CentOS 7
```
$ ./ansible-install-centos.sh
```

* Ubuntu 16.04 or 18.04
```
$ ./ansible-install-ubuntu.sh
```


## Run a Docker container with Ansible installed


* for CentOS 7 base operating system 
```
$ docker build -t acc:ce7 -f .\Dockerfile_acc.ce7 .

$ docker run --rm --name ACC -d acc:ce7

$ docker exec -it --name ACC bash
```


* for Ubuntu base operating system 
```
$ docker build -t acc:u18 -f .\Dockerfile_acc.u18 .

$ docker run --rm --name ACC -d acc:u18

$ docker exec -it --name ACC bash
```

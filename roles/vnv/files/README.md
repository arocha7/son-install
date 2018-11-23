# Docker Compose

Compose is a tool for defining and running multi-container Docker applications


## Docker Engine install

```
$ wget -qO- https://get.docker.com/ | sh
$ sudo usermod -aG docker $(whoami) 
$ docker --version
```


## Docker Compose install

```
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

$ sudo chmod +x /usr/local/bin/docker-compose

$ docker-compose --version
```

## Docker Compose config

Create a '.env' file with the Environment variables for your APP - here the example for VNV

```bash
export app_vnv_logging_level=DEBUG
export app_gk_base_url="http://localhost:32002/api/v3"
export routes_file=vnv_routes.yml
export unpackager_url="http://localhost:5099/api/v1/packages"
export catalogue_url="http://localhost:4011/catalogues/api/v2"
export repository_url="http://localhost:4012"
export external_callback_url="http://localhost:6100/tng-vnv-lcm/api/v1/packages/on-change"
export internal_callback_url="http://localhost:6100/tng-vnv-lcm/api/v1/packages/on-change"
```

NOTE: if you have secrets to pass in this '.env' file then you should create an exception at '.gitignore' 


# APPLICATION deployment

```
$ cd son-install/roles/'APP'/files
$ docker network create --driver=bridge --subnet=172.24.0.0/23 --gateway=172.24.0.1 --ip-range=172.24.0.128/25 tango
$ docker login -u sonata-nfv -p ****** registry.sonata-nfv.eu:5000
$ docker-compose up
```


# Kompose

kompose is a tool to help users familiar with docker-compose move to Kubernetes. It takes a Docker Compose file and translates it into Kubernetes resources

## Kompose Install

```bash
$ curl -L https://github.com/kubernetes/kompose/releases/download/v1.17.0/kompose-linux-amd64 -o kompose

$ chmod +x kompose

$ sudo mv ./kompose /usr/local/bin/kompose
```

## Convert a 'docker-compose.yaml' to Kubernetes (Service Definition and Deployment files)

```bash
$ kompose convert
```

or
```bash
$ kompose convert -f docker-compose.yml -o all-in-one-file.yml
```

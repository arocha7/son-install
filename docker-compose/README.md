# Docker Compose


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



# VNV deployment

```
$ docker-compose docker-compose.yml
```

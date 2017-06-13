# Zeppelin-base

- ![Version](https://images.microbadger.com/badges/version/xemuliam/zeppelin-base:0.7.2.svg) ![Layers](https://images.microbadger.com/badges/image/xemuliam/zeppelin-base:0.7.2.svg)
- ![Version](https://images.microbadger.com/badges/version/xemuliam/zeppelin-base:0.7.1.svg) ![Layers](https://images.microbadger.com/badges/image/xemuliam/zeppelin-base:0.7.1.svg)
- ![Version](https://images.microbadger.com/badges/version/xemuliam/zeppelin-base:0.7.0.svg) ![Layers](https://images.microbadger.com/badges/image/xemuliam/zeppelin-base:0.7.0.svg)
- ![Version](https://images.microbadger.com/badges/version/xemuliam/zeppelin-base:0.6.2.svg) ![Layers](https://images.microbadger.com/badges/image/xemuliam/zeppelin-base:0.6.2.svg)

Basic and clean [Docker](https://www.docker.com/what-docker) image for [Apache Zeppelin](http://zeppelin.apache.org), based on [Alpine](http://alpinelinux.org) and [OpenJDK](http://openjdk.java.net)

                        ##         .
                  ## ## ##        ==
               ## ## ## ## ##    ===
           /"""""""""""""""""\___/ ===
      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~
           \______ o Zeppelin  __/
             \    \         __/
              \____\_______/

# Overview

Dockerized single-host Zeppelin.

Deployment options out of the box:
- Standalone Zeppelin node


# Exposed ports

- 8080 - Zeppelin web application port
- 8443 - Zeppelin web application secure port


# Volumes

All below volumes can be mounted to docker host machine folders or shared folders to easy maintain data inside them. 

Zeppelin-specific:
- /opt/zeppelin/logs
- /opt/zeppelin/notebook


# Official Documentation and Guides

- [Overview](http://zeppelin.apache.org/docs/0.7.0/)
- [Quick Start](http://zeppelin.apache.org/docs/0.7.0/install/install.html)
- [Interpreters](http://zeppelin.apache.org/docs/0.7.0/manual/interpreters.html)
- [Wiki](https://cwiki.apache.org/confluence/display/ZEPPELIN/Zeppelin+Home)


# Usage

This image can either be used as a base image for building on top of NiFi or just to experiment with. I personally have not attempted to use this in a production use case.

Please use corresponding branches from this repo to play with code.


# Pre-Requisites
Ensure the following pre-requisites are met (due to some blocker bugs in earlier versions). As of today, the latest Docker Toolbox and Homebrew are fine.

- Docker 1.10+
- Docker Machine 0.6.0+
- Kitematic 0.12

(all downloadable as a single [Docker Toolbox](https://www.docker.com/products/docker-toolbox) package as well)


# How to use from Kitematic

1. Start Kitematic
2. Enter `xemuliam` in serach box
3. Choose `zeppelin-base` image
4. Click `Create` button

Kitematic will assign all ports and you'll be able to run NiFi web-interface directly from Kitematic.


# How to use from Docker CLI

1. Start Docker Quickstart Terminal
2. Run command  `docker run -d -p 8080:8080 -p 8443:8443 xemuliam/zeppelin-base`
3. Check Docker machine IP  `docker-machine ls`
4. Use IP from previous step in address bar of your favorite browser, e.g. ` http://192.168.99.100:8080/#/`

# Enjoy! :)

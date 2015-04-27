#!/bin/bash

MASTER_NAME=jenkins-master
CONTAINER_VERSION=latest
HTTP_PORT=8080
SLAVE_PORT=50000
HOME_VOLUME=~/docker_jenkins_home/$NAME

docker run --rm --name $MASTER_NAME -p $HTTP_PORT:8080 -p $SLAVE_PORT:50000 -v $HOME_VOLUME:/var/jenkins_home eficode/jenkins:$CONTAINER_VERSION

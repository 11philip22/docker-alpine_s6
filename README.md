# Alpine-s6
Alpine Linux base image with s6 overlay  
<https://hub.docker.com/repository/docker/philipwold/alpine-s6>

## What is Alpine Linux
<https://alpinelinux.org/about/>

## What is the s6 overlay
<https://skarnet.org/software/s6/>  
<https://github.com/just-containers/s6-overlay>

## Why?
This is a base image used for my other containers. It has a user called "user" under wich all applications will run. You can change the UID and the GID with the PUID and the PGID parameters.

## Parameters
| Parameter | Function |
| :----: | --- |
| `-e PUID=1000` | UID for the user: user |
| `-e PGID=1000` | GID for the user: user |
#!/bin/bash
echo Building iizy/wordpress-xdebug:latest
docker build -t iizy/wordpress-xdebug:latest . -f Dockerfile
#docker push iizy/wordpress-xdebug:latest
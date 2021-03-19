#!/usr/bin/env bash
docker build --tag=machine-learning-model .
docker image ls -a
docker run -p 8000:80 machine-learning-model
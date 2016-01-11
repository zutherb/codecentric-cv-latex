#!/bin/bash

eval "$(docker-machine env docker-vm)"
docker build -t codecentric-cv-latex .
docker run --rm -v $(pwd):/opt codecentric-cv-latex

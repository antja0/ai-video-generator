#!/bin/bash
docker volume remove ai-gen
docker volume create ai-gen
docker build -t ai-video-gen .
docker run --rm -v ai-gen:/output/ ai-video-gen
docker run -it --rm --volume ai-gen:/ai-gen alpine ls -AlF /ai-gen/
docker run -it --rm --volume ai-gen:/ai-gen --volume /Users/aj/Desktop/tensori/ai-video-gen:/local_tmp alpine cp -r /ai-gen/ /local_tmp/

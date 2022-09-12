## To create volume:
- docker volume create ai-gen

## To run docker:
- docker build -t ai-video-gen .
- docker run --rm --volume ai-gen:/out/ ai-video-gen

## To get output files:
- docker run -it --rm --volume ai-gen:/ai-gen alpine ls -AlF /ai-gen/
- docker run -it --rm --volume ai-gen:/ai-gen --volume /tmp/output:/local_tmp alpine cp -r /ai-gen/ /local_tmp/
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y gcc make pkg-config automake libtool libicu-dev libpcre2-dev libasound2-dev
RUN apt-get update && apt-get install -y wget libsndfile1 python3 python3-pip melt espeak
RUN pip install TTS
RUN pip install numba --upgrade
RUN pip install numpy --upgrade
RUN apt-get update && apt-get install -y imagemagick

COPY ./src .
RUN chmod u+x generate.sh
RUN ./generate.sh

#RUN apt-get update && apt-get install imagemagick
#RUN convert socrates.png -gravity Center -fill white -pointsize 30 -annotate 0 '"Love you mom"' edited.png



#RUN chmod u+x Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh
#RUN conda install pytorch torchvision -c pytorch
#RUN pip install transformers==4.19.2 diffusers invisible-watermark
#RUN pip install -e .

#RUN chmod u+x generate.sh
#RUN ./generate.sh

#RUN mkdir output

#RUN ./mimic -t "Hello. Doctor. Name. Continue. Yesterday. Tomorrow." -o output/hello.wav

#RUN sudo apt-get install gcc make pkg-config automake libtool libicu-dev libpcre2-dev libasound2-dev
#RUN ./mimic -t "Hello. Doctor. Name. Continue. Yesterday. Tomorrow." -o /out/hello.wav


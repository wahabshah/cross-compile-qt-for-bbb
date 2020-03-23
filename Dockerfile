FROM debian:stretch

RUN apt update && apt install -y sshpass rsync wget xz-utils git   build-essential crossbuild-essential-armhf

RUN apt install -y python pkg-config bison flex gperf
RUN apt install -y cmake

RUN  git config --global user.email "you@example.com" &&  git config --global user.name "Your Name"
FROM ubuntu
WORKDIR /mydir
RUN apt update
RUN apt install -y neofetch
ENV LC_ALL=C.UTF-8

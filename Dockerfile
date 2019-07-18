FROM openjdk:8-jdk

WORKDIR /usr/src/app

RUN apt-get update \
&& apt-get install -y python3 python3-dev python3-pip python3-lxml wget git \
&& pip3 install benchexec coloredlogs
RUN apt-get update && apt-get install -y python2.7

# Set Entrypoint with hard-coded options
CMD ["bash"]

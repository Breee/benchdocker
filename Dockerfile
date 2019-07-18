FROM openjdk:8-jdk

WORKDIR /usr/src/app

RUN apt-get update \
&& apt-get install -y python3 python3-dev python3-pip python3-lxml wget git \
&& pip3 install benchexec coloredlogs
RUN apt-get update && apt-get install -y python2.7
RUN apt-get update && apt-get install -y maven
RUN apt-get update && apt-get install -y zip unzip
RUN git clone https://github.com/ultimate-pa/ultimate.git /ultimate \
&& cd /ultimate && git checkout wip/jl/heuristics \
&& cd /ultimate/releaseScripts/default && bash makeFresh.sh
# Set Entrypoint with hard-coded options
CMD ["bash"]

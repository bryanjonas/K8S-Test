from nvidia/cuda:10.1-cudnn8-devel-ubuntu16.04

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/bryanjonas/K8S-Test.git

RUN cd K8S-Test && \
    nvcc -o pi Pi.cu

CMD ~/K8S-Test/pi
# docker build -t zprize:dev .
# docker run -it -d --runtime nvidia --ipc=host -v $(pwd):/home --name zprize zprize:dev

FROM nvcr.io/nvidia/cuda:11.7.1-devel-ubuntu20.04

RUN apt update && apt install -y \
    curl \ 
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

CMD ["bash"]
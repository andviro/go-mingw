FROM golang:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
        gcc-mingw-w64 \
        gcc-multilib g++-multilib \
        libc6-dev-i386 \
        libx32gcc-4.8-dev \
&& rm -rf /var/lib/apt/lists/*

RUN go get github.com/mjibson/esc/...
RUN go get github.com/akavel/rsrc
RUN go get github.com/go-swagger/go-swagger/cmd/swagger

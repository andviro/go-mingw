FROM golang:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
        gcc-mingw-w64 \
&& rm -rf /var/lib/apt/lists/*

RUN go get github.com/mjibson/esc/...
RUN go get github.com/akavel/rsrc
RUN go get github.com/yvasiyarov/swagger

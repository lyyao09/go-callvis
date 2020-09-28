# Builder image
FROM golang:1.12-alpine

# Install dependencies
RUN apk add --no-cache git

# Set workspace
WORKDIR /src/go-callvis/

# Copy source
COPY ./ /src/go-callvis/

# Download modules
RUN GO111MODULE=on GOPROXY=https://gocenter.io go mod download

# Build microservices
RUN apk add make git && \
    OUT_DIR=/ make install

# Builder image
FROM golang:1.12-alpine

# Install dependencies
RUN apk add --no-cache git

# Set workspace
WORKDIR /src/go-callvis/

# Build microservices
RUN go get -u github.com/ofabry/go-callvis

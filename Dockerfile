# Builder image
FROM tetafro/golang-gcc:latest

# Set workspace
WORKDIR /src/go-callvis/

# Build microservices
RUN go get -u github.com/ofabry/go-callvis

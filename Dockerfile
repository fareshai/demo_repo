# Use the official Golang image as the base image
FROM golang:1.19

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application source code to the container
COPY <<EOF /app/Main.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
EOF

# Build the Go application
RUN go build -o hello-world .

# Command to run the executable
CMD ["./hello-world"]


# This Dockerfile includes the Go source code directly within the file, making it self-contained. You can build and run the Docker image with the following commands

# Build the Docker image
docker build -t hello-world .

# Run the Docker container
docker run --rm hello-world

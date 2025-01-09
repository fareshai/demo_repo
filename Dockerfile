# Use an official Golang runtime as the base image
FROM golang:1.19-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application source code into the working directory
COPY . /app/

# Build the Go application
RUN go build -o largest_number_app .

# Expose the port used by the Go app
EXPOSE 8080

# Run the Go application when the container starts
CMD ["./largest_number_app"]

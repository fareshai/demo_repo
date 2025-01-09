package main

import (
    "fmt"
    "log"
    "os/exec"
)

const dockerImage = "largest-number-app"

func main() {
    // Clone Repository
    fmt.Println("Cloning repository...")
    if err := runCommand("git", "clone", "-b", "main", "https://github.com/fareshai/demo_repo.git"); err != nil {
        log.Fatalf("Failed to clone repository: %v", err)
    }

    // Build Docker Image
    fmt.Println("Building Docker image...")
    if err := runCommand("docker", "build", "-t", dockerImage, "."); err != nil {
        log.Fatalf("Failed to build Docker image: %v", err)
    }

    // Run Docker Container
    fmt.Println("Running Docker container...")
    if err := runCommand("docker", "run", dockerImage); err != nil {
        log.Fatalf("Failed to run Docker container: %v", err)
    }

    fmt.Println("Pipeline execution completed.")
}

func runCommand(name string, args ...string) error {
    cmd := exec.Command(name, args...)
    cmd.Stdout = log.Writer()
    cmd.Stderr = log.Writer()
    return cmd.Run()
}

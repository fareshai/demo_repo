package main

import (
    "fmt"
    "net/http"
    "sort"
)

func home(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "<h1>Welcome</h1>")
}

func main() {
    // Web server setup
    http.HandleFunc("/", home)
    go func() {
        fmt.Println("Starting server at port 8080")
        if err := http.ListenAndServe(":8080", nil); err != nil {
            fmt.Println("Server failed:", err)
        }
    }()

    // Program to find the largest number
    numbers := []int{10, 25, 56, 78, 34, 89, 12} // Example list of numbers

    // Using the sort package to find the largest number
    sort.Ints(numbers)
    largestNumber := numbers[len(numbers)-1]

    // Print the result
    fmt.Println("The largest number is:", largestNumber)
}

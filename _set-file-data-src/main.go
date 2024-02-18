package main

import (
	"context"
	"fmt"
	"io"
	"os"

	"github.com/redis/go-redis/v9"
)

// This is a simple program that reads the base64 encoded information from badge_base64.txt and sets it as a value to a key: "Image".
// Executable is located at the root level of the project and is named "set-file-data"
func main() {
	client := redis.NewClient(&redis.Options{
		Addr:     "localhost:6379",
		Password: "", // no password set
		DB:       0,  // use default DB
	})

	f, _ := os.Open("./local-data/badge_base64.txt")

	contents, _ := io.ReadAll(f)
	stringContent := string(contents)

	defer f.Close()

	ctx := context.Background()

	err := client.Set(ctx, "Image", stringContent, 0).Err()
	if err != nil {
		panic(err)
	}

	fmt.Println("badge_base64.txt file was set as a value for the 'Image' key.")
}

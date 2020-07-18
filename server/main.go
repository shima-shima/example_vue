package main

import (
	"io"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		io.WriteString(w, "Hello, golang!\n")
	})
	log.Fatal(http.ListenAndServe(":8888", nil))
}

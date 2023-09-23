package main

import (
	"fmt"
	"log/slog"
	"net/http"
	"os"
)

func main() {
	logger := slog.New(slog.NewJSONHandler(os.Stdout, nil))
	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		logger.Info("request", slog.String("path", r.URL.Path), slog.Any("tags", []string{r.Method}))
		fmt.Fprint(w, `{"status": "ok"}`)
	})

	logger.Info("listening to port *:8080. Press ctrl+c to cancel")
	http.ListenAndServe(":8080", mux)
}

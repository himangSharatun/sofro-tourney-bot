package handler

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/himangsharatun/sofro-tourney-bot/core/entity"
)

func Hello(w http.ResponseWriter, r *http.Request) {
	log.Printf("Hello world")
	response := entity.NewJSONResponse("Hello from the other site", 200)

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(response)
}

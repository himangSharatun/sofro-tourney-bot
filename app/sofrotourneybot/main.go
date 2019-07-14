package main

import (
	"log"
	"net/http"
	// "strconv"

	"github.com/himangsharatun/sofro-tourney-bot/app"
	// "github.com/himangsharatun/sofro-tourney-bot/entity"
	"github.com/himangsharatun/sofro-tourney-bot/core/http/handler"
	// "github.com/himangsharatun/sofro-tourney-bot/method"
	// "github.com/himangsharatun/sofro-tourney-bot/utility"
	// "github.com/himangsharatun/sofro-tourney-bot/utility/mysql"
	// "github.com/go-telegram-bot-api/telegram-bot-api"
	"github.com/gorilla/mux"
	// "github.com/robfig/cron"
)

func main() {
	router := mux.NewRouter()
	router.HandleFunc("/hello", handler.Hello).Methods("GET")
	http.Handle("/", router)

	log.Println("Endpoint start...")
	log.Fatal(http.ListenAndServe(":8989", router))

	defer app.MysqlClient.Close()
}

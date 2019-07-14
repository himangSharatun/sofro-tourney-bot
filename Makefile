dep:
	dep ensure -v -vendor-only

build:
	go build -o sofrotourneybot app/sofrotourneybot/main.go

run:
	./sofrotourneybot

dev:
	go build -o sofrotourneybot app/sofrotourneybot/main.go
	./sofrotourneybot

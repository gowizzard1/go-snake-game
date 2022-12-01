default: test

build:
	go build -v -o ./_bin/go-snake-game

run: build
	./_bin/snake-game

run_on_docker:
	docker build -t go-snake-game . && docker run --rm -ti go-snake-game

test:
	go test -v ./...

NAME=go-gin-bootstrap
VERSION=0.0.1

.PHONY: build
build:
	@go build -o $(NAME)

.PHONY: run
run: build
	@./$(NAME) -e development

.PHONY: run-prod
run-prod: build
	@./$(NAME) -e production

.PHONY: clean
clean:
	@rm -f $(NAME)

.PHONY: test
test:
	@go test -v ./tests/*

.PHONY: mod-download
mod-download:
	go mod download
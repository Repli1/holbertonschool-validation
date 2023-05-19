lint: ## Troubleshoots lint.
	@golang.ci-lint run

build: ## Builds the website
	@make lint
	@go build -o awesome-api

run: ## Removes the dist directory
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stops the program
	@pkill awesome-api

clean: ## Stops the program and removes the binary and log files
	@pkill awesome-api
	@rm -rf awesome-api awesome-api.log

test: ## Tests the program
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Shows help
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)

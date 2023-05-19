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
	@rm -rf awesome-api awesome-api.log coverage-units.out coverage-integrations.out

test: unit-tests integration-tests ## Tests the program

help: ## Shows help
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)

unit-tests: ## Runs the unit tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ## Runs the integration tests
	@go test -v -coverprofile=coverage-units.out
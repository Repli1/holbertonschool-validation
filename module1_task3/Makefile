build: ## Builds the website
	@hugo

clean: ## Removes the dist directory
	@rm -rf dist

post: ## Creates new post using POST_NAME and POST_TITLE values
	@hugo new posts/$(POST_NAME).md
	@echo "---\
	title: '$(POST_TITLE)'\
	date: $(date +"%Y-%m-%dT%H:%M:%S%z")\
	---" > content/posts/$(POST_NAME).md

help: ## Shows help
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)

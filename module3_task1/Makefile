build: ## Build the website
	@hugo --source=. --destination=dist/

clean: ## Clean up the dist/ directory
	@rm -Rf dist/*

post: ## Create a new blog post
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "false"/' content/posts/$(POST_NAME).md

help: ## Show the available targets and their usage
	@grep "^[a-zA-Z\-\_0-9]*:.*##.*" $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# Implement the next steps for the actual Go-Hugo website's source code

build: ## Build the website
	@hugo --source=. --destination=dist/

clean: ## Clean up the dist/ directory
	@rm -Rf dist/*

post: ## Create a new blog post
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "false"/' content/posts/$(POST_NAME).md

package: ## Produce a zip file containing the 'dist/' folder
	@hugo
	@zip -r awesome-website.zip dist/

lint: ## Check markdown files for any syntax mistake
	@markdownlint README.md DEPLOY.md

unit-tests: ## Run unit-tets of the project

integration-tests: ## Run integration-tests of the project

validate: ## Validate the project

help: ## Show the available targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

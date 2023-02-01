# Build the website
build:
	@hugo --source=. --destination=dist/

# Clean up the dist/ directory
clean:
	@rm -Rf dist/*

# Create a new blog post
post:
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "false"/' content/posts/$(POST_NAME).md

.DEFAULT_GOAL = help
.PHONY		  = help stylelint eslint

## —— Makefile ——————————————————————————————————
help: ## Displays this help screen
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

## —— Linters ———————————————————————————————————
stylelint: ## Run stylelint
	npx stylelint "assets/scss/**/*.scss"

eslint: ## Run eslint
	npx eslint "assets/js/**/*.js"

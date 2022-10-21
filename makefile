gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@flutter pub get
	@flutter packages pub run build_runner build --delete-conflicting-outputs
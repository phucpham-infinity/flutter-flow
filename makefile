gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@flutter pub get
	@flutter packages pub run build_runner build --delete-conflicting-outputs

run: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run

purge: ## Purges the Flutter
	@flutter clean
	@flutter pub get

run_dev_mobile: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run -t lib/main_development.dart

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get
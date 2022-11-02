gen: ## Generates the assets
	@echo "╠ Generating the assets..."
	@flutter pub get
	@flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations"
	@flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -f keys -o locale_keys.g.dart
	@flutter packages pub run build_runner build --delete-conflicting-outputs

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

commit: format lint run_unit
	@echo "╠ Committing..."
	git add .
	git commit

run: ## Runs the mobile application in dev
	@echo "╠ Running the app"
	@flutter run

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

purge: ## Purges the Flutter 
	@flutter clean
	@flutter pub get
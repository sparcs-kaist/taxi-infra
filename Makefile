all:
	# Makefile for docker compose shortcuts.
	# For usage, refer to ./Makefile.
prod-up:
	# deploy the production environment
	docker compose -p taxi -f docker-compose.yml up -d
prod-down:
	# clean the pre-production environment
	docker compose -p taxi -f docker-compose.yml down -v
dev-up:
	# deploy the pre-production environment
	docker compose -p taxi -f docker-compose.dev.yml up -d
dev-down:
	# clean the pre-production environment
	docker compose -p taxi -f docker-compose.dev.yml down -v
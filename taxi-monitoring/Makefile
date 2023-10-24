all:
	# deploy the monitoring worker
	docker compose -p taxi-monitoring -f docker-compose.yml up -d
clean:
	# clean the monitoring worker
	docker compose -p taxi-monitoring -f docker-compose.yml down -v
start:
	@echo "App: STARTING ..."
	@docker-compose up --build -d
	@echo "App: STARTED"


stop:
	@echo "App: STOPPING..."
	@docker-compose down
	@echo "App: STOPPED..."

watch:
	@echo "Watching for file changes... (Docker Compose v 2.22 < Needed)"
	@docker compose watch  -d

logs: 
	@docker-compose logs -f
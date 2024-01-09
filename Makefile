COMPOSE_FILES=docker-compose.yml

start:
	@echo "App: STARTING ..."
	@docker-compose -f $(COMPOSE_FILES) up --build -d
	@echo "App: STARTED"

stop:
	@echo "App: STOPPING..."
	@docker-compose -f $(COMPOSE_FILES) down
	@echo "App: STOPPED..."

shell:
	docker-compose -f $(COMPOSE_FILES) exec app bash

logs: 
	@docker-compose logs -f
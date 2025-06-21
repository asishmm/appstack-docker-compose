PROJECT_NAME=docker-compose-stack

up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f

build:
	docker-compose build

restart:
	docker-compose restart

ps:
	docker-compose ps

clean:
	docker-compose down -v

status:
	docker-compose top

open-grafana:
	open http://localhost:3000

open-prometheus:
	open http://localhost:9090

open-kibana:
	open http://localhost:5601

logs-%:
	docker-compose logs -f $*

restart-%:
	docker-compose restart $*


help:
	@echo "Usage:"
	@echo "  make up            # Start all containers"
	@echo "  make down          # Stop all containers"
	@echo "  make logs          # Tail all logs"
	@echo "  make restart-grafana # Restart only grafana
	@echo "  make logs-<name>   # Tail logs of a specific container (e.g., logs-grafana)"
	@echo "  make build         # Build all images"
	@echo "  make clean         # Stop and remove all data volumes"
	@echo "  make open-grafana  # Open Grafana dashboard"


create-network:
	docker network inspect hey-taxi-network >/dev/null 2>&1 || \
		docker network create hey-taxi-network

api-up: create-network
	docker compose --profile api up -d

api-down:
	docker compose --profile api down

proxy-up: create-network
	docker compose --profile proxy up -d

proxy-down:
	docker compose --profile proxy down

infrastructure-up: create-network
	docker compose --profile infrastructure up -d

infrastructure-down:
	docker compose --profile infrastructure down

up:
	docker compose --profile infrastructure --profile api up -d

up-expose:
	docker compose -f docker-compose.yml -f docker-compose.expose.yml --profile infrastructure --profile api up -d

down:
	docker compose --profile infrastructure --profile api down

pull:
	docker compose --profile api pull
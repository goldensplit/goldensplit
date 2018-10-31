# ================== Settings ==================

.PHONY: _copy-dev install-dev

_copy-dev:
	@cp docker-compose.override.dev.yml docker-compose.override.yml

install-dev: _copy-dev

# ================== Compose ==================

.PHONY: restart rebuild down ps logs

restart:
	@docker-compose up --remove-orphans -d --force-recreate $(c)

rebuild:
	@docker-compose up --remove-orphans -d --force-recreate --build $(c)

down:
	@docker-compose down --remove-orphans $(c)

ps:
	@docker-compose ps

logs:
	@docker-compose logs -f $(c)

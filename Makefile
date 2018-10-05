# ================== Settings ==================
.PHONY: _copy-dev install-dev

_copy-dev:
	@cp docker-compose.override.dev.yml docker-compose.override.yml

install-dev: _copy-dev

# ================== Compose ==================
.PHONY: restart ps logs

restart:
	@docker-compose up --remove-orphans -d --force-recreate $(c)

ps:
	@docker-compose ps

logs:
	@docker-compose logs -f $(c)

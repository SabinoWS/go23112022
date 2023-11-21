
sup:
	# @echo $$(id -u)
	@docker-compose -f dev/docker-compose.yml build --no-cache --build-arg UID=$$(id -u) --build-arg GID=$$(id -g)
	@docker-compose -f dev/docker-compose.yml up -d
	@docker-compose -f dev/docker-compose.yml exec go-dev bash
sdown:
	@docker-compose -f dev/docker-compose.yml down
sdev:
	@docker-compose -f dev/docker-compose.yml exec go-dev bash
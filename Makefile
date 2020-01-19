default:
	@echo Please specify target name!
.PHONY: default

all: install test
.PHONY: all

install: up
	# For Laravel
	# cp .env.example .env
	# chmod -R a+w storage/*
	# docker-compose run composer install --prefer-dist --no-interaction
	# docker-compose exec php-fpm php artisan key:generate
	# docker-compose exec php-fpm php artisan migrate
	# docker-compose exec php-fpm php artisan db:seed
.PHONY: install

up:
	docker-compose up -d
.PHONY: up

down:
	docker-compose down -v
.PHONY: down

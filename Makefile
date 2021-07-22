.PHONY: start test

start: 
	docker-compose up

test:
	docker-compose run supporters bundle exec rspec
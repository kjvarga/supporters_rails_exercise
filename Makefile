.PHONY: start test

start: 
	docker-compose up

db:
	docker-compose run supporters bin/rails db:migrate RAILS_ENV=development
	docker-compose run supporters bundle exec rake db:seed

test:
	docker-compose run supporters bundle exec rspec
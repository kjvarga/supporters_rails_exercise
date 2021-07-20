# README

Supporters Rails Exercice is the basic setup needed for our live coding exercice. Be sure to have a working setup prior to the interview. 

## Basic infos

* It's a Ruby (2.5.1) on Rails (6) app
* For the purpose of this test, it uses a sqlite database
* The app is running on port 3000
* The app will restart on code change

## Build & Run

If you have docker, simply use Makefile alias : 

* `make start` will setup and run the app
* `make test` will execute rspec tests

You can check it's working with `curl localhost:3000`

## Docker installation

* Build & run `docker-compose up`
* Run test `docker-compose run supporters bundle exec rspec`

To execute any command on the running container just do `docker-compose run supporters <command>`

## Manual Installation 

### Dependancies and configuration

* Install Ruby 2.5.1, for example `rvm use 2.5.1`
* `bundle install`
* `bin/rails db:migrate RAILS_ENV=development`
* `bundle exec rake db:seed`

You can check it's working with `curl localhost:3000`

### Run

* `bin/rails s`

### Run Tests

* `bundle exec rspec`


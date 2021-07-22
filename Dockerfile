FROM ruby:2.5.1-alpine

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache build-base sqlite-dev tzdata

WORKDIR /usr/src/app

COPY Gemfile ./
RUN bundle install 

COPY . .

RUN bin/rails db:migrate RAILS_ENV=development \
    && bundle exec rake db:seed

EXPOSE 3000

CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]
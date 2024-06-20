FROM ruby:3.2.2-alpine AS base

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache \
    build-base \
    sqlite \
    sqlite-dev \
    tzdata

WORKDIR /usr/src/app

RUN gem update --system
COPY Gemfile ./
RUN bundle install 

COPY . .

FROM base AS db

RUN RAILS_ENV=development bundle exec rails db:setup

FROM db AS server

EXPOSE 3000

CMD [ "bundle", "exec", "bin/rails", "s", "-p", "3000", "-b", "0.0.0.0" ]

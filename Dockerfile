FROM ruby:2.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV RAILS_VERSION 4.1.6
RUN gem install bundler
RUN gem install rails --version "$RAILS_VERSION"
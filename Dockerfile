FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /rate-limit-with-rmq
WORKDIR /rate-limit-with-rmq
COPY Gemfile /rate-limit-with-rmq/Gemfile
COPY Gemfile.lock /rate-limit-with-rmq/Gemfile.lock
RUN bundle install
COPY . /rate-limit-with-rmq/
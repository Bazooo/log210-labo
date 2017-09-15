FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /log210
WORKDIR /log210
ADD Gemfile /log210/Gemfile
ADD Gemfile.lock /log210/Gemfile.lock
RUN bundle install
ADD . /log210
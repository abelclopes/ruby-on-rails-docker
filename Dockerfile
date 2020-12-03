# A simple Dockerfile for a RoR application

FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ruby-app

WORKDIR /ruby-app

ADD ./ruby-app/Gemfile /ruby-app/Gemfile
ADD ./ruby-app/Gemfile.lock /ruby-app/Gemfile.lock

RUN bundle install
ADD ./ruby-app /ruby-app

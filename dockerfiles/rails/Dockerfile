FROM ruby:2.7.1-slim-buster

RUN apt-get update -qq \
  && apt-get install -y \
  build-essential \
  locales \
  libpq-dev \
  default-libmysqlclient-dev \
  && locale-gen ja_JP.UTF-8 \
  && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

ENV APP_NAME my_app
RUN mkdir $APP_NAME
WORKDIR $APP_NAME

ENV BUNDLE_PATH $APP_NAME/.bundle

# ADD ./Gemfile $APP_NAME/Gemfile
# ADD ./Gemfile.lock $APP_NAME/Gemfile.lock

# RUN bundle install
# ADD containers/rails $APP_NAME

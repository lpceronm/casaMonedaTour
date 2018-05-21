FROM ruby:2.5-alpine

RUN apk add --no-cache \
    build-base \
    tzdata \
    git \
    postgresql-dev \
    nodejs \
    imagemagick

RUN mkdir /casaMonedaTour

WORKDIR /casaMonedaTour

ENV RAILS_ENV development
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV WEB_CONCURRENCY 2
ENV MIN_THREADS 1
ENV MAX_THREADS 5
ENV PORT=3000

ADD Gemfile /casaMonedaTour/Gemfile
ADD Gemfile.lock /casaMonedaTour/Gemfile.lock

RUN bundle install
# RUN bundle install --without development test

COPY . .

EXPOSE 3000

CMD puma -C config/puma.rb

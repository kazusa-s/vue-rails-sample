FROM node:10-alpine as node

ENV LANG C.UTF-8
ENV EDITOR 'vim'

FROM ruby:2.7.1-alpine3.12

WORKDIR /app/vue-rails-sample
COPY Gemfile* ./
COPY package.json ./
COPY yarn.lock ./

COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/include/node /usr/local/include/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules

RUN set -e && \
    apk update && \
    apk add --no-cache \
      bash \
      tzdata \
      mysql-client \
      mysql-dev \
      yarn \
      vim && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    gem install bundler -v 1.3.0 && \
    bundle config set path 'vendor/bundle' && \
    bundle install && \
    yarn install && \
    apk del build-dependencies && \
    rm -rf /var/lib/apt/lists/*

COPY . ./

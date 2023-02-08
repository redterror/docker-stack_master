FROM ruby:3.1.3-alpine

RUN apk --update add --no-cache --virtual git openssh

WORKDIR /app
COPY Gemfile* /app/

# ruby-dev
RUN apk --update add --no-cache --virtual build-dependencies build-base \
  && bundle install \
  && apk --purge del build-dependencies build-base

ENTRYPOINT ["stack_master"]

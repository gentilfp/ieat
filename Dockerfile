FROM ruby:2.7.2-alpine

ENV TZ America/Sao_Paulo
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV RAILS_ENV development
ENV NODE_ENV development
ENV RAILS_LOG_TO_STDOUT true

WORKDIR /ieat
EXPOSE 3000

COPY . /ieat/

RUN gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)"

RUN apk update && apk add --no-cache build-base postgresql-dev tzdata nodejs yarn git

RUN yarn install --check-files

RUN bundle install

CMD ["./scripts/server.sh"]

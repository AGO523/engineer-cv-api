FROM ruby:3.2.2-bookworm

ENV TZ=Asia/Tokyo

RUN mkdir /app

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

ENV PORT=3000
EXPOSE $PORT
CMD ./bin/rails server -p $PORT

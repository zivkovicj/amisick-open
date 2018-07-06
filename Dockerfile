FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /amisick
WORKDIR /amisick
COPY amisick/Gemfile /amisick/Gemfile
COPY amisick/Gemfile.lock /amisick/Gemfile.lock
RUN bundle install
COPY amisick /amisick
EXPOSE 3000
RUN rake assets:precompile

CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]

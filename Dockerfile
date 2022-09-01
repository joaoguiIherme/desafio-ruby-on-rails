FROM ruby:3.0.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm install --global yarn
RUN mkdir /app

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock


RUN bundle install

EXPOSE 3000

CMD ["sh", "entrypoint.sh"]
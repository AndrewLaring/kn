FROM ruby:3.1.0
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    apt-utils \
    libpq-dev \
    apt-transport-https \
    nodejs \
    postgresql-client \
    git \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /project
COPY Gemfile /project/Gemfile
COPY Gemfile.lock /project/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
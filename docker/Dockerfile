FROM ruby:3.1.2

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
       nodejs \
 && apt-get clean \
 && rm -fr /var/lib/apt/lists/* \
 && npm install -g yarn@1

RUN mkdir /app
WORKDIR /app

COPY docker-entrypoint.sh /app/docker/docker-entrypoint.sh
RUN chmod +x docker/docker-entrypoint.sh
ENTRYPOINT [ "/app/docker/docker-entrypoint.sh" ]
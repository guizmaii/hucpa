FROM jruby:9.1.7.0-jre-alpine

RUN apk --update --no-cache add git openssh && \
    mkdir /hucpa

WORKDIR /hucpa

COPY hucpa.gemspec Gemfile Gemfile.lock ./

RUN gem install bundler -v 1.13.7 && bundle

COPY . ./

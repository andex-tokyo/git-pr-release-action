FROM ruby:3.4-alpine3.22

RUN apk --update --no-cache upgrade && \
    apk --no-cache add git tzdata && \
    gem install --no-document git-pr-release

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

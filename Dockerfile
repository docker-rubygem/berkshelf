FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=5.6.0

RUN gem install berkshelf --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["berks"]
CMD ["--help"]

FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=5.5.0

RUN gem install berkshelf --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["berks"]
CMD ["--help"]

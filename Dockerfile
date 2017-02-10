FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.0

RUN gem install ec2-ssh --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-ssh"]
CMD ["--help"]

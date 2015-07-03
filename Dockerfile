FROM buildkite/agent:ubuntu

# Install docker client version 1.6.2
ENV DEBIAN_FRONTEND="noninteractive"
RUN echo deb http://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
RUN apt-get install -qqy apt-transport-https; apt-key adv --keyserver pgp.mit.edu --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
RUN apt-get update -qq && apt-get install -qqy \
    lxc-docker-1.6.2

ADD ./buildkite/bootstrap.sh ./buildkite/bootstrap.sh

ENTRYPOINT ["buildkite-agent"]
CMD ["start"]

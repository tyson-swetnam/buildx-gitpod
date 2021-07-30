FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

RUN mkdir -p /home/gitpod/.docker/cli-plugins

CMD docker build --platform=local -o . git://github.com/docker/buildx
CMD mv buildx ~/docker/cli-plugins/docker-buildx

FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

CMD mkdir -p /home/gitpod/.docker/cli-plugins

CMD docker build --platform=local -o /home/gitpod/.docker/cli-plugins/docker-buildx git://github.com/docker/buildx

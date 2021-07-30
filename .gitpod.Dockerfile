FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

CMD docker build --platform=local -o . git://github.com/docker/buildx
CMD mkdir -p /home/gitpod/.docker/cli-plugins
CMD mv buildx /home/gitpod/.docker/cli-plugins/docker-buildx

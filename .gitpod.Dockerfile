FROM gitpod/workspace-full

CMD export DOCKER_BUILDKIT=1
RUN docker build --platform=local -o . git://github.com/docker/buildx
CMD mkdir -p ~/.docker/cli-plugins
CMD mv buildx ~/.docker/cli-plugins/docker-buildx

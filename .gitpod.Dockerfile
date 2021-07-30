FROM gitpod/workspace-full

USER gitpod

CMD export DOCKER_BUILDKIT=1
CMD docker build --platform=local -o . git://github.com/docker/buildx
CMD mkdir -p ~/.docker/cli-plugins
CMD mv buildx ~/.docker/cli-plugins/docker-buildx

USER root

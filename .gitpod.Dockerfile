FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

RUN mkdir -p /home/gitpod/.docker/cli-plugins

COPY buildx.sh buildx.sh

CMD ./buildx.sh

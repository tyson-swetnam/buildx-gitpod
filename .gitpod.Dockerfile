FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

RUN mkdir -p /home/gitpod/.docker/cli-plugins

COPY buildx.sh /home/gitpod/buildx.sh
CMD chmod +x /home/gitpod/buildx.sh
CMD /bin/bash /home/gitpod/buildx.sh

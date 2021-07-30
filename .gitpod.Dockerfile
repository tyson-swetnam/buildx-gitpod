FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1

RUN mkdir -p /home/gitpod/.docker/cli-plugins

COPY buildx.sh /home/gitpod/buildx.sh

CMD sudo chmod +x /home/gitpod/buildx.sh
CMD ./home/gitpod/buildx.sh

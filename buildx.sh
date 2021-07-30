# buildx
docker build --platform=local -o . git://github.com/docker/buildx

# move the binary
mv buildx /home/gitpod/.docker/cli-plugins/docker-buildx

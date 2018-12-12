#! /bin/bash

if [ "$(docker ps -a | grep abcd)" ]; then
  echo "Stopping abcd container"
  docker stop abcd
  echo "Removing abcd container"
  docker rm abcd
fi

if [ "$(docker images | grep abcd-dev)" ]; then
  echo "Removing abcd-dev image"
  docker rmi abcd-dev
fi

echo "Building abcd-dev image"
docker build -t abcd-dev .
echo "Creating container: abcd"
docker run -d --name abcd -p 80:80 abcd-dev

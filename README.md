# abcd-dev
A basic ABCD development environment running Ubuntu, Apache2 and PHP 7.0.33 using docker containers.

A handy `run.sh` shell script handles the creation of docker images and containers. This will create a doocker image with the name abcd-dev and a docker container called abcd.
```
  chmod +x run.sh
   ./run.sh
```

The docker container's port 80 (for web applications) is mapped onto the host's port 80 as well. As such, web applications within the docker container can be accessed with the following url:
```
   http://localhost/
```

# simple server

docker:
default port is 8080
docker run -d --rm --net=host -p 8080:8080 simple-server
change docker port to 80 (using an argument):
docker run -d --rm --net=host -p 8080:80 simple-server 80
change host port to 80 (using docker run):
docker run -d --rm --net=host -p 80:8080 simple-server



curl -i http://localhost:80

# simple server

A simple server, that listens on a given port (default: 8080).

It is supposed to be used from within a busybox docker container.

The HTML shows the creation date.

When started, 'index.html' is created from 'template_busybox.html'.


##start the server

docker:

default port is 8080

`docker run -d --rm --net=host -p 8080:8080 simple-server`


change docker port to 80 (using an argument):

`docker run -d --rm --net=host -p 8080:80 simple-server 80`


change host port to 80 (using docker run):

`docker run -d --rm --net=host -p 80:8080 simple-server`


##test the server

`curl -i http://localhost:80`

# simple server

This is just a test project without real benefit to anyone.

It was created as kind of placeholder and for test purposes.

---

A simple server, that listens on a given port (default: 8080).

It is supposed to be used from within a busybox docker container.

The HTML shows the creation date.

When started, 'index.html' is created from 'template_busybox.html'.

## build the image (Dockerfile)

`docker build -t simpler-server .`

## start the server

default port is `8080`

`docker run --rm -p 8080:8080 simple-server`

or

`docker run --rm --net=host simple-server`

then

`curl -i http://localhost:8080`


---

A port can be passed to the actual script `simple-server.sh`.
This configures the server to bind to the new port
instead of the default port `8080`.

Change the port within the docker container to 80.

This is not really useful, but for the records...


`docker run --rm -p 8080:80 simple-server 80`

or

Change the published port on your localhost to 80:

`docker run --rm -p 80:8080 simple-server`


## test the server

`curl -i http://localhost:80`


## starting all over
Should the container still be running after `Ctrl+C`:

get the container name

`docker container ls`

force remove the container (stop and remove)

`docker rm -f  <container_name>`


## delete the image
`docker image rm simple-server`



## docker version
This was tested using `docker 1.13` and above.

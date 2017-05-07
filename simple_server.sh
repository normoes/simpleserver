#!/bin/bash

if [ "$1" == "" ];then
  echo "please provide a port"
  echo "-->  ./simple_server.sh 8080"
  exit
fi



echo "serving on port" $1

today=$(date)
#sed  "s|date|$today|" template.html > index.html
#nc -kl $1 <<< "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n" < index.html


sed  "s|date|$today|" template_busybox.html > index.html
## busybox needs the following command
while true ; do nc -l -p $1 < index.html ; done

## some versions of nc provide a -c option like used below
#nc -kl $1 -c 'echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n";echo -e "<!DOCTYPE html><html><head><title></title></head><body><p>How are you?</p><p>$(date)</p></body></html>"'


# without the use of -k option
#while true ; do nc -l 8080 < index.html ; done

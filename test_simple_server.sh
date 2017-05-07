

today=$(date)
sed  "s|date|$today|" template.html > index.html 

nc -l 8080 <<< "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n" < index.html

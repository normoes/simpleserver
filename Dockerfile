FROM busybox

ADD simple_server.sh /
ADD template_busybox.html /
RUN sh -c "chmod u+x simple_server.sh"

WORKDIR /

EXPOSE 8080
ENTRYPOINT ["sh", "simple_server.sh"]
CMD ["8080"]

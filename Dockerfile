#Dockerfile
FROM ubuntu:xenial
EXPOSE 8090
RUN apt-get update && \
  apt-get install python-pip -y && \
  apt-get install python-dev -y
COPY webapp/* /webapp/
WORKDIR /webapp
ENTRYPOINT ["python"]
CMD ["appserver.py"]

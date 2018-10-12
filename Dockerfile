FROM 100.125.0.87:20202/cpe/alpine-glibc:latest

RUN mkdir -p /home/webapp/sample
ADD main /home/webapp/sample/
ADD static /home/webapp/sample/static
ADD view /home/webapp/sample/view

WORKDIR /home/webapp/sample

RUN chmod +x /home/webapp/sample/main
CMD ["/home/webapp/sample/main"]

EXPOSE 8080

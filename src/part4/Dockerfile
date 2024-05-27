FROM nginx:latest

WORKDIR /

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./fastcgi.c /
COPY ./script.sh /

RUN apt-get update && \
    apt-get install -y spawn-fcgi gcc libfcgi-dev && \
    gcc -o fastcgi fastcgi.c -lfcgi && \

CMD spawn-fcgi -p 8080 ./fastcgi %% nginx -g 'daemon off;'


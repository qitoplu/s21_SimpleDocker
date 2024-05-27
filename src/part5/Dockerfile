FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./Desktop/fastcgi.c /
COPY ./script.sh /

RUN chmod +x /script.sh
RUN apt-get update && \
    apt-get install -y spawn-fcgi gcc libfcgi-dev && \
    gcc -o fastcgi fastcgi.c -lfcgi && \
    rm -rf /var/lib/apt/lists/*

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 CMD curl -f http://localhost/ || exit 1

RUN groupadd -r myuser && useradd -r -g myuser myuser
USER myuser

ENTRYPOINT ["script.sh"]

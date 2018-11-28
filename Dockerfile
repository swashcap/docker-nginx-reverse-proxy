FROM nginx:stable

RUN set -ex; apt-get update
RUN set -ex; apt-get install -y openssl
RUN set -ex; \
  openssl req -subj '/CN=US' -x509 -newkey rsa:4096 -nodes -days 365 \
  -keyout /etc/ssl/sample.key \
  -out /etc/ssl/sample.pem

COPY nginx.conf /etc/nginx/conf.d/sample.conf

EXPOSE 443
EXPOSE 80

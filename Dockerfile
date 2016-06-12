FROM alpine:latest

MAINTAINER alex <alexwhen@gmail.com> 

RUN apk --update add nginx

COPY 2048 /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.log.conf

COPY nginx.8880.conf /etc/nginx/nginx.8880.conf

RUN mkdir /run/nginx

EXPOSE 80

CMD ["nginx", "-c", "/etc/nginx/nginx.8880.conf"]

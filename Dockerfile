FROM ubuntu:latest
MAINTAINER abusitapo <dstnsmail@gmail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y nginx \
    mysql-server
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php && apt update
RUN apt install -y php8.0-fpm
RUN echo 'Hello from my own image container!' > /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80

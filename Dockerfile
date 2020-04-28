FROM nginx:latest
COPY jenkins-x-website-master /usr/share/nginx/html
EXPOSE 9090

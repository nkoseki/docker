# Build image file for echo container name
# Referenced by amsy810

FROM nginx:1.27.5-alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN apk --update add curl bind-tools bash && rm -rf /var/cache/apk/*

FROM alpine

#EXPOSE 80

WORKDIR /app

ADD ./ /app/

# Apache2
RUN apk --update --no-cache add bash apache2 apache2-ssl
#RUN apk add --no-cache net-tools
#RUN apk add --no-cache nmap-nping

COPY --chmod=755 <<EOT /entrypoint.sh
#!/bin/bash

## set hostname
echo "hostname is: `hostname`" > /var/www/localhost/htdocs/index.html

## start httpd
httpd -D FOREGROUND
EOT

# run httpd foreground
#CMD ["httpd", "-D", "FOREGROUND"]

# exec script
ENTRYPOINT ["/entrypoint.sh"]

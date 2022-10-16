FROM alpine:3.16
RUN apk --no-cache add \
    nginx
WORKDIR /app
COPY index.html ./
COPY assets ./
COPY docker-nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]

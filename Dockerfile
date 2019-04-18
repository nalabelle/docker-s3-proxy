FROM pottava/s3-proxy:1.4

RUN apk --no-cache add \
    ca-certificates \
 && addgroup -g 1000 s3-proxy \
 && adduser -D -G s3-proxy -u 1000 s3-proxy

ENV S3_PROXY_VERSION="1.4" \
    APP_PORT=8080

USER s3-proxy

FROM pottava/s3-proxy as upstream

FROM debian:buster-slim
COPY --from=upstream /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=upstream /app /aws-s3-proxy
ENTRYPOINT ["/aws-s3-proxy"]

FROM alpine:3.19
RUN apk add --no-cache curl jq
COPY fetch-token.sh /fetch-token.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /fetch-token.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

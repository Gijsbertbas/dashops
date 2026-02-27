FROM prometheuscommunity/json-exporter:latest AS exporter

FROM alpine:3.19
RUN apk add --no-cache gettext
COPY --from=exporter /bin/json_exporter /bin/json_exporter
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 7979
ENTRYPOINT ["/docker-entrypoint.sh"]

FROM alpine:3.20.3
RUN apk --no-cache add postgresql-client
ENTRYPOINT [ "psql" ]

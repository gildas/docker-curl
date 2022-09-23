FROM alpine
LABEL org.opencontainers.image.title="curl"
LABEL org.opencontainers.image.description="runs cURL"
LABEL org.opencontainers.image.authors="Gildas Cherruel <gildas.cherruel@genesys.com>"
LABEL org.opencontainers.image.version="0.0.2"
LABEL org.opencontainers.image.licenses="MIT"

RUN addgroup -S curl && \
    adduser  -S -g curl curl

RUN apk add --no-cache curl

USER curl

ENTRYPOINT [ "/usr/bin/curl" ]

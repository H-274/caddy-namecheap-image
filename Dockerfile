FROM caddy:2.9.1-builder-alpne AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/namecheap

FROM caddy:2.9.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

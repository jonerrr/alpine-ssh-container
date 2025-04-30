FROM alpine:latest

RUN apk update && \
    apk add --no-cache openssh-client && \
    rm -rf /var/cache/apk/*

# Optional: Set a non-root user (good practice, but ensure permissions for keys/sockets if needed)
# RUN addgroup -S sshuser && adduser -S sshuser -G sshuser
# USER sshuser

# No default command needed, as it will be provided by the Kubernetes manifest
# CMD ["/usr/bin/ssh"]
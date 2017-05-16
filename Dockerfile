FROM node:6.10.3-alpine

MAINTAINER LoyaltyOne

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# install curl, bash, kms-env 0.2.16 and s3-copy 0.0.2
RUN apk upgrade --update && \
    apk add --update curl bash && \
    npm install -g kms-env@0.2.16 s3-copy@0.0.2
    
COPY env-decrypt /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/env-decrypt"]
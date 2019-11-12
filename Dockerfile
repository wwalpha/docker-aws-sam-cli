FROM python:alpine

RUN apk add bash && \
  apk add --no-cache --virtual build-deps build-base gcc && \
  pip install aws-sam-cli && \
  apk del build-deps

WORKDIR /var/opt

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/sam"]

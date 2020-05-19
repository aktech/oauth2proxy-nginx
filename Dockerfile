FROM debian:stable-slim

# Install OAuth2_Proxy
ENV OAUTH2_PROXY_RELEASE oauth2_proxy-v5.1.1.linux-amd64.go1.14.2
RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && \
    apt-get install -y --force-yes wget && \
    wget https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v5.1.1/$OAUTH2_PROXY_RELEASE.tar.gz && \
    tar xzvf /$OAUTH2_PROXY_RELEASE.tar.gz && \
    cp /$OAUTH2_PROXY_RELEASE/oauth2_proxy /usr/bin/oauth2_proxy


# Install CA certificates
RUN apt-get update -y && apt-get install -y ca-certificates

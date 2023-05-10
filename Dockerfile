# Base image
FROM alpine:3.18.0

# Exit immediately if a command exits with a non-zero status
RUN set -e

# Upgrade base packages
RUN apk upgrade --no-cache

# Install base dependencies
RUN apk add --no-cache \
    bash \
    curl \
    git \
    openssh \
    openssl \
    sudo

# Configure bash
ENV PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# Install Helm
ARG HELM_VERSION=master
RUN curl --location --silent "https://raw.githubusercontent.com/helm/helm/${HELM_VERSION}/scripts/get-helm-3" | bash -

# Install shyaml
RUN apk add --no-cache \
    python3 \
  && sudo ln -s /usr/local/binidle3 /usr/local/binidle \
  && sudo ln -s /usr/local/binpydoc3 /usr/local/binpydoc \
  && sudo ln -s /usr/local/binpython3 /usr/local/binpython \
  && sudo ln -s /usr/local/binpython3-config /usr/local/binpython-config \
  && curl https://bootstrap.pypa.io/get-pip.py | sudo python3 \
  && pip install shyaml

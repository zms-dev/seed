# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.154.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: buster, stretch
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

USER root

ENV DEBIAN_FRONTEND=noninteractive

# Prerequisites
RUN apt-get update \
  && apt-get -y install --no-install-recommends apt-utils apt-transport-https 2>&1 \
  && apt-get -y install git curl software-properties-common

# Github
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
RUN apt-add-repository https://cli.github.com/packages

# Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# NodeJS
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -

# Install Packages
RUN apt-get update \
  && apt-get -y install vim zsh nodejs yarn gh \
  && apt-get autoremove -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g nx

RUN curl -L git.io/antigen > ~/antigen.zsh
ENV DEBIAN_FRONTEND=dialog
COPY .zshrc /root/.zshrc

CMD /bin/zsh -l
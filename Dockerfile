FROM ubuntu:22.04
RUN useradd -m react
WORKDIR /home/react/app
RUN apt-get update

# Using recommended installation steps for Debian based distributions
# Reference: https://github.com/nodesource/distributions#ubuntu-versions 
RUN apt-get install -y --no-install-recommends ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Using Nodejs version 21
ENV NODE_MAJOR=21
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

# Update repository and install Nodejs (npm comes included)
RUN apt-get update
RUN apt-get install -y nodejs

COPY my-app/. . 
WORKDIR /home/react/app/my-app

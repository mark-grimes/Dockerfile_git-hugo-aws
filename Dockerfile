FROM debian:jessie-slim


# Install git straight from apt
RUN apt-get update -y \
    && apt-get install -y git

# Install aws and all its dependencies
RUN apt-get install -y git python-pip \
    && pip install awscli

# Download and install Hugo
ADD https://github.com/gohugoio/hugo/releases/download/v0.32.2/hugo_0.32.2_Linux-64bit.deb /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb \
    && rm /tmp/hugo.deb

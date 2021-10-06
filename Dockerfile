FROM ubuntu

# Install hurl
RUN apt-get update -y
RUN apt-get install -y curl bash
RUN curl -LO https://github.com/Orange-OpenSource/hurl/releases/download/1.3.1/hurl_1.3.1_amd64.deb
RUN apt install -y ./hurl_1.3.1_amd64.deb

# Create non-root user for hurl
RUN groupadd -r hurl && useradd --no-log-init -r -g hurl hurl
USER hurl


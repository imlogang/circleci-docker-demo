FROM httpd

COPY ./README.md /usr/local/apache2/htdocs/README.md

RUN uname -m

RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    git \
    make \
    tar \
    unzip \
    vim \
    wget \
    zip \
    && rm -rf /var/lib/apt/lists/*

# build/install redis-cli
RUN mkdir -p /tmp/redis-stable && cd /tmp/redis-stable \
    && wget http://download.redis.io/redis-stable.tar.gz \
    && tar xvzf redis-stable.tar.gz \
    && cd redis-stable \
    && make \
    && cp src/redis-cli /usr/local/bin/ \
    && chmod 755 /usr/local/bin/redis-cli \
    && rm -fr /tmp/redis-stable && cd ~ \
    && redis-cli --version

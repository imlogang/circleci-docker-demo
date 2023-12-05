FROM httpd

COPY ./test.txt /usr/local/apache2/htdocs/test.txt

RUN uname -m

RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    wget \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

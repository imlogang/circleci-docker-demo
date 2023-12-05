FROM httpd

COPY ./test.txt /usr/local/apache2/htdocs/test.txt

RUN uname -m

RUN apt-get update && apt-get install -y \
    curl \
    git \
    make \
    unzip \
    vim \
    wget \
    zip \
    && rm -rf /var/lib/apt/lists/*

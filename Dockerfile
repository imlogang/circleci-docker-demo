FROM httpd

RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    wget \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

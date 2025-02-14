#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y \
    curl \
    htop \
    mc \
    wget \
    make \
    cmake \
    unzip \
    jq \
    git \
    tmux \
    net-tools \
    build-essential \
    ncdu \
    netcat-openbsd \
    clang \
    pkg-config \
    libssl-dev 

echo "══════════════════════════════════════════════════════════════════════════"
echo " Checking if Docker is already installed...                               "
echo "══════════════════════════════════════════════════════════════════════════"

if command -v docker &> /dev/null; then
    echo "✅ Docker is already installed."
    exit 0
fi

echo "══════════════════════════════════════════════════════════════════════════"
echo " Installing Docker...                                                     "
echo "══════════════════════════════════════════════════════════════════════════"

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

if [[ $? -ne 0 ]]; then
    echo "❌ Docker installation via the official script failed."
    echo "⚠️ Falling back to installing docker-compose manually."

    curl -fsSL "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

rm get-docker.sh

sudo usermod -aG docker $(whoami)

echo "✅ Docker installation completed successfully."
echo "══════════════════════════════════════════════════════════════════════════"

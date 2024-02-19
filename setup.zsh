#!/bin/zsh

# Get toplevel of git repository
DIR=$(git rev-parse --show-toplevel)

sudo apt install -y \
    build-essential \
    git-all \
    curl \
    wget \
    zsh \
    htop \

mkdir ~/Developer
mkdir ~/Developer/Work
mkdir ~/Developer/School
mkdir ~/Developer/Tools
mkdir ~/Developer/Personal
git clone https://github.com/davisschenk/Notes ~/Developer/Notes

# Install Emacs 29.2
sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
sudo apt-get update
sudo apt build-dep emacs29
sudo apt install -y \
    libgccjit0 \
    libgccjit-10-dev \
    libjansson4 \
    libjansson-dev \
    gnutls-bin \
    libtree-sitter-dev \
    gcc-10 \
    imagemagick \
    libmagick++-dev \
    libwebp-dev \
    webp \
    libxft-dev \
    libxft2

# Download and unpack emacs from mirror
EMACS_URL="http://mirrors.kernel.org/gnu/emacs/emacs-29.2.tar.gz"
EMACS_SOURCE=$(wget -O - "$EMACS_URL" | tar -xz -C ~/Developer/Tools)
export CC=/usr/bin/gcc-10
export CXX=/usr/bin/gcc-10

pushd ~/Developer/Tools/emacs-29.2
./autogen.sh
./configure --with-native-compilation=aot --with-imagemagick --with-json --with-tree-sitter --with-xft
make
make install
make clean
popd

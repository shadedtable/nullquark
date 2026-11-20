#!/usr/bin/env bash
set -e
LIB="flat-warehouse.a"
TAG="bright-garden-bright-badger"
REPO="shadedtable/nullquark"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app

#!/bin/bash

os=${OSTYPE//[0-9.-]*/}

case "$os" in
  darwin)
    echo "Running for Mac"
    ./build/Darwin/release/release/bin/mutexd \
    --limit-rate=10000000 \
    --out-peers=15 \
    --in-peers=15 \
    --rpc-bind-ip=0.0.0.0 \
    --confirm-external-bind \
    --rpc-bind-port=26943 \
    --p2p-bind-ip=0.0.0.0 \
    --log-level=0 \
    --disable-dns-checkpoints \
    --block-sync-size=50
    ;;
  msys)
    echo "I'm Windows using git bash"
    ;;

  linux)
    echo "Running for Linux"
    ./build/Linux/release/release/bin/mutexd \
    --limit-rate=10000000\
    --out-peers=15 \
    --in-peers=15 \
    --rpc-bind-ip=0.0.0.0 \
    --confirm-external-bind \
    --rpc-bind-port=26943 \
    --p2p-bind-ip=0.0.0.0 \
    --log-level=0 \
    --disable-dns-checkpoints \
    --block-sync-size=50
    ;;
  *)

  echo "Unknown Operating system $OSTYPE"
  exit 1
esac


#!/bin/bash

os=${OSTYPE//[0-9.-]*/}

case "$os" in
  darwin)
    echo "Running for Mac"
    ./build/Darwin/master/release/bin/mutexd \
    --limit-rate=10000000 \
    --out-peers=15 \
    --in-peers=15 \
    --rpc-bind-ip=0.0.0.0 \
    --confirm-external-bind \
    --rpc-bind-port=26943 \
    --p2p-bind-ip=0.0.0.0 \
    --log-level=0 \
    --add-peer=35.172.245.22:26942 \
    --add-peer=35.168.54.62:35444 \
    --add-peer=34.232.227.76:26942 \
    --add-peer=3.90.100.66:26942 \
    --disable-dns-checkpoints \
    --block-sync-size=100
    ;;
  msys)
    echo "I'm Windows using git bash"
    ;;

  linux)
    echo "Running for Linux"
    ./build/Linux/master/release/bin/mutexd \
    --limit-rate=10000000\
    --out-peers=15 \
    --in-peers=15 \
    --rpc-bind-ip=0.0.0.0 \
    --confirm-external-bind \
    --rpc-bind-port=26943 \
    --p2p-bind-ip=0.0.0.0 \
    --log-level=0 \
    --add-peer=35.172.245.22:26942 \
    --add-peer=35.168.54.62:26942 \
    --add-peer=3.90.100.66:26942 \
    --add-peer=34.232.227.76:26942 \
    --add-peer=3.210.60.30:26942 \
    --add-peer=167.99.229.57:26942 \
    --disable-dns-checkpoints \
    --block-sync-size=500
    ;;
  *)

  echo "Unknown Operating system $OSTYPE"
  exit 1
esac


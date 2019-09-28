#!/bin/bash
./build/Darwin/release/release/bin/mutexd --rpc-bind-ip 0.0.0.0 --confirm-external-bind --block-sync-size=10 --in-peers=25 --out-peers=25 --log-level=1

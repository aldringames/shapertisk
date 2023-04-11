#!/bin/bash -e
wget -O apertis.tar.gz https://images.apertis.org/release/v2022/v2022.4/amd64/isolation-sysroot/isolation_sysroot-v2022-amd64-v2022.4.tar.gz
docker build .

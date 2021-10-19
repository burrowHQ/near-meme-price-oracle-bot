#!/bin/bash
set -e

export NODE_ENV=testnet
# TODO: Add your account ID
# export NEAR_ACCOUNT_ID=abc.testnet
export CONTRACT_ID=priceoracle.testnet

cd $(dirname "$0")
mkdir -p logs

while :
do
  DATE=$(date "+%Y_%m_%d")
  date | tee -a logs/logs_$DATE.txt
  # TODO: Update your path to the node binary if necessary
  /usr/local/bin/node index.js 2>&1 | tee -a logs/logs_$DATE.txt
  sleep 1
done
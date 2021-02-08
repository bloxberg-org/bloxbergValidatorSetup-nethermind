#!/bin/bash

#Extract NAT_IP and write to config

echo "=====Starting from the script====="
./Nethermind.Runner --config  /nethermind/configs/bloxberg.cfg --Network.ExternalIp ${NAT_IP} --KeyStore.BlockAuthorAccount ${PUBLIC_ADDRESS} --KeyStore.UnlockAccounts ["${PUBLIC_ADDRESS}"] --KeyStore.EnodeAccount ${PUBLIC_ADDRESS}
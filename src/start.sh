#!/bin/bash

#Extract NAT_IP and write to config


if [[ -z "${PUBLIC_ADDRESS}" ]]
then
  echo "=====Starting from the script inside if===== ${PUBLIC_ADDRESS}"
  ./Nethermind.Runner --config  /nethermind/configs/bloxberg.cfg --Network.ExternalIp ${NAT_IP}
else
  echo "=====Starting from the script====="
  ./Nethermind.Runner --config  /nethermind/configs/bloxberg.cfg --Network.ExternalIp ${NAT_IP} --KeyStore.BlockAuthorAccount ${PUBLIC_ADDRESS} --KeyStore.UnlockAccounts ["${PUBLIC_ADDRESS}"] --KeyStore.EnodeAccount ${PUBLIC_ADDRESS}
fi



# bloxbergValidatorSetup-nethermind

[Nethermind](https://github.com/NethermindEth/nethermind) client setup for bloxberg's AuRa consensus.

Network and client settings are already adjusted to run in the bloxberg network. [config.json](./validator/config.json) corresponds to the [validator.toml](https://github.com/bloxberg-org/bloxbergValidatorSetup/blob/master/validator/validator.toml) of the parity client. [bloxberg.json](./validator/bloxberg.json) is the same as the parity [bloxberg.json](https://github.com/bloxberg-org/bloxbergValidatorSetup/blob/master/validator/bloxberg.json). [static-nodes.json](./validator/static-nodes.json) is the Nethermind version of the [bootnodes.txt](https://github.com/bloxberg-org/bloxbergValidatorSetup/blob/master/validator/bootnodes.txt).

## Setup

- Copy the `.env-template` into a file named `.env`.

### Import keys

Import the existing keys from your local existing parity client [bloxbergValidatorSetup](https://github.com/bloxberg-org/bloxbergValidatorSetup).

- Go to `/bloxbergValidatorSetup/validator/bloxbergData/keys/Bloxberg`.
- Copy the `UTC-....` file to `./validator/keystore` folder here
- Open the key file and copy the public adress at the field `"address":<PUBLIC_ADDRESS>`
- Rename the copied `UTC-...` file to `key-<PUBLIC_ADDRESS>` e.g. `key-021bc580151828bf75c733bd917ffba3230040a7`.
- Set `PUBLIC_ADDRESS` in the `.env` file as copied `<PUBLIC_ADDRESS>`
- Copy your key pasword at `/bloxbergValidatorSetup/validator/validator.pwd` to `./validator/validator.pwd`.

### Set NAT IP

- Set the `NAT_IP` in the `.env` file.

## Run

Run the client by `docker-compose up`

To run in the background `docker-compose up -d`

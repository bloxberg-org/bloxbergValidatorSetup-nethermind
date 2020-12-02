# bloxbergValidatorSetup-nethermind

Nethermind client setup for bloxberg's AuRa consensus.

## Setup

- Copy the `.env-template` into file named `.env`.

### Import keys

Import the existing keys from old repo bloxbergValidatorSetup.

- Go to `/bloxbergValidatorSetup/validator/bloxbergData/keys/Bloxberg`.
- Copy the `UTC-....` file to `./validator/keystore` folder here
- Open the key file (needs root access) and copy the public adress at the field `"address":<PUBLIC_ADDRESS>`
- Rename the copied `UTC-...` file to `key-<PUBLIC_ADDRESS>` e.g. `key-021bc580151828bf75c733bd917ffba3230040a7`.
- Set `PUBLIC_ADDRESS` in the `.env` file as copied `<PUBLIC_ADDRESS>`
- Copy your key pasword at `/bloxbergValidatorSetup/validator/validator.pwd` to `./validator/validator.pwd`.

### Set NAT IP
- Set the `NAT_IP` in `.env` file.

## Run

Run the client by `docker-compose up`



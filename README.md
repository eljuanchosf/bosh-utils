# bosh-utils

![BOSH logo](https://upload.wikimedia.org/wikipedia/en/4/41/Bosh-logo.png)


A small collection of useful BOSH utilities

## Utilities

1. `bosh_ssh.sh` - Initiates an SSH connection to a deployed BOSH SSH VM when the BOSH ssh agent is not working correctly. Example: `./bosh_ssh.sh "--gateway_identity_file MY_BOSH_PEM_FILE"`
2. `listen_to_nats.rb` - Listen and prints NATS messages in real time. An excelent way to listen to the BOSH agents. Requires `ruby > 2.0` and `nats` gem.


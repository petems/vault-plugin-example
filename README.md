Vault Plugin Vagrant example
===========================

## Setup

 1. Clone this project from Github.
 2. Run `vagrant up` and wait a while.
 3. Log into one of the Vault servers and initialize the cluster:

        $ vagrant ssh vault0
        export VAULT_ADDR=http://localhost:8200
        vault operator init
        vault operator unseal ...

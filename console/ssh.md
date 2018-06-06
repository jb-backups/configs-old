# SSH

## Generating a new SSH key

``` bash
ssh-keygen
```

or

``` bash
ssh-keygen -t rsa -b 4096 -C "Username, Machinename - Macbook Pro, Personal - Wednesday, 06 June 2018" -N "passphrase"
```

## Copy key to clipboard

``` bash
cat ~/.ssh/id_rsa.pub | pbcopy
```

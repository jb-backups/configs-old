# SSH

## Generating a new SSH key

``` bash
ssh-keygen
```

or

``` bash
ssh-keygen -t rsa -b 4096 -C "comment" -N "passphrase"
```

## Copy key to clipboard

``` bash
cat ~/.ssh/id_rsa.pub | pbcopy
```

# HOMESTEAD COMMANDS

hs() cd ~/Homestead;
hsu() {
  cd ~/Homestead;
  vagrant up --provision;
  cd ~;
}

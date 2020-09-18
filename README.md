# Configuracões

- Operational System
  - [Linux](https://github.com/jonathanbergson/configs/blob/master/docs/OS-LINUX.md)
  - [MacOS](https://github.com/jonathanbergson/configs/blob/master/docs/OS-MACOS.md)
  - [Windows](https://github.com/jonathanbergson/configs/blob/master/docs/OS-WINDOWS.md)
- Other
  - [Browser](https://github.com/jonathanbergson/configs/blob/master/docs/BROWSER.md)
  - [Text Editor](https://github.com/jonathanbergson/configs/blob/master/docs/EDITORS.md)
  - [Softwares](https://github.com/jonathanbergson/configs/blob/master/docs/SOFTWARES.md)

## Developer Tools

### Homebrew

O mac não tem um apt-get, mas tem o [Homebrew](https://brew.sh/index_pt-br) para instalar e gerenciar, ferramentas de linha de comando e softwares.

Instalar o gerenciador de pacotes:

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Git

Instalar ferramenta de controle de versão:

```shell
# MacOS
brew install git
brew install git-flow-avh
```

Configurar informações do [git](https://git-scm.com):

```shell
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

### ssh

#### Generating a new SSH key

```shell
ssh-keygen
```

or

```shell
ssh-keygen -t rsa -b 4096 -C "Username, Machinename - Macbook Pro, Personal - Wednesday, 06 June 2018" -N "passphrase"
```

#### Copy key to clipboard

```shell
cat ~/.ssh/id_rsa.pub | pbcopy
```

#### Criar arquivo de configuração para multiplas chaves

Para ler sobre, [clique aqui](https://gist.github.com/jexchan/2351996).

```
# work account

Host github.com-work
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_work

# personal account

Host github.com-personal
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa_personal

Host bitbucket.org
  HostName bitbucket.org
  User git
  IdentityFile ~/.ssh/id_rsa_personal
```

### oh-my-zsh

Instalar o zsh e o [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) para ter um terminal mais inteligente:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Adicionar plugins:

Instalar o plugin `zsh-autosuggestions` para o `oh-my-zsh`:

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Adicionar o plugin ao arquivo `.zshrc`:

```shell
plugins=(
  git
  zsh-autosuggestions
)
```

#### Selecionar temas:

##### Baixar e instalar o tema:

```shell
git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
git clone https://github.com/oskarkrawczyk/honukai-iterm-zsh.git $ZSH_CUSTOM/themes/honukai
git clone https://github.com/carloscuesta/materialshell.git $ZSH_CUSTOM/themes/materialshell
```

##### Para ativar o tema é necessário modificar o arquivo `.zshrc`:

```shell
# Default themes

ZSH_THEME="agnoster"
ZSH_THEME="gnzh"
ZSH_THEME="amuse"

# Custom themes

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="honukai/honukai"
ZSH_THEME="materialshell/materialshell"
```

### zsh

Mudar o `shell` default para o `zsh`:

```shell
chsh -s /bin/zsh
```

### shell

Para adicionar e utilizar os snippets, basta baixar o repositório:

```shell
cd ~
git clone git@github.com:jonathanbergson/configs.git ~/.config/personal
```

Adicionar a linha abaixo há no arquivo `.zshrc` ou `.bashrc`:

```shell
source ~/.config/personal/default.sh
```

ou execute o comando:

```shell
echo "\n\nsource ~/.config/personal/default.sh" >> ~/.zshrc
```

## Linguagens de Programacão

### ASDF - Manage Runtime Versions

Instalar o gerenciador de versão:

```shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
```

### .NET Code

```shell
asdf plugin-add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git
asdf list all dotnet-core
asdf install asdf global elixir 1.2.4
asdf global asdf global elixir 1.2.4
```

### Node

```shell
# MacOS
brew install coreutils
brew install gpg

# Linux
apt-get install dirmngr
apt-get install gpg
```

```shell
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

asdf list all nodejs
asdf install nodejs latest
asdf global nodejs 13.11.0
```

###### Configurar NPM e pacotes globais:

```shell
npm config set init-author-name "Your name"
npm config set init-author-email "name@domain.com"
npm config set init-author-url "http://domain.com"
npm config set init-license "MIT"
```

```shell
npm i -g generator-editorconfig gitignore nodemon yarn yo
npm i -g create-react-app react-native-cli
```

###### Modo de instalação via NVM:

```shell
brew install nvm

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

nvm install --lts
```

## Docker

```shell
docker container run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
```

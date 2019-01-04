
# Configurar MacOS

Tutorial para configurar o macOS.

## Developer Tools

### ssh

#### Generating a new SSH key

``` bash
ssh-keygen
```

or

``` bash
ssh-keygen -t rsa -b 4096 -C "Username, Machinename - Macbook Pro, Personal - Wednesday, 06 June 2018" -N "passphrase"
```

#### Copy key to clipboard

``` bash
cat ~/.ssh/id_rsa.pub | pbcopy
```


### oh-my-zsh

Instalar o zsh e o [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) para ter um terminal mais inteligente:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Adicionar plugins:

Instalar o plugin `zsh-autosuggestions` para o `oh-my-zsh`:

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Adicionar o plugin ao arquivo `.zshrc`:

```
plugins=(
  git
  zsh-autosuggestions
)
```

#### Selecionar temas:

##### Baixar e instalar:

```
git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
git clone https://github.com/oskarkrawczyk/honukai-iterm-zsh.git $ZSH_CUSTOM/themes/honukai
git clone https://github.com/carloscuesta/materialshell.git $ZSH_CUSTOM/themes/materialshell
```

##### Para ativar o tema é necessário modificar o arquivo `.zshrc`:

```
## Default themes

ZSH_THEME="agnoster"
ZSH_THEME="gnzh"
ZSH_THEME="amuse"

## Custom themes

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="honukai/honukai"
ZSH_THEME="materialshell/materialshell"
```

##### Customizações dos temas:

###### `powerlevel9k`:

```
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ram node_version battery)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery node_version dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_NODE_VERSION_BACKGROUND='28'
POWERLEVEL9K_NODE_VERSION_FOREGROUND='15'

POWERLEVEL9K_MODE='awesome-patched'
```

### Homebrew

O mac não tem um apt-get, mas tem o [Homebrew](https://brew.sh/index_pt-br) para instalar e gerenciar, ferramentas de linha de comando e softwares.

Instalar o gerenciador de pacotes:

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Instalar fontes e softwares com a linha de comando:

```
brew tap caskroom/cask
brew tap caskroom/fonts
```

Fontes que você vai precisar para programar no mac:

```
brew cask install homebrew/cask-fonts/font-fira-code
brew cask install homebrew/cask-fonts/font-source-code-pro
brew cask install font-sans-forgetica
```

Instalar softwares direto da AppStore:

```
## Install
brew install mas

## Singin
mas signin mas@example.com "13245678"

## Software to install
# Apple
mas install 409183694     # Keynote
mas install 409203825     # Numbers
mas install 409201541     # Pages

# Browser
mas install 1077036385    # Fluid Browser

# Message
mas install ???     # Airmail
mas install ???     # Spark

# Utility
mas install 775737590     # iA Writer
mas install 441258766     # Magnet
mas install 646295438     # RAR Extractor Lite

# Other
mas install 926121450     # Coinverter
mas install 935235287     # Encrypto
mas install 1081413713    # GIF Brewery 3
mas install 884952790     # iTranslate
```

### Git

Instalar ferramenta de controle de versão:

```
brew install git
brew install git-flow-avh
```

Configurar informações do [git](https://git-scm.com):

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

### Node

Instalar o gerenciador de versão do node:

```
brew install nvm
```

Adicionar a variável de ambiente no arquivo `.zshrc`:

```
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
```

Instalar a versão `lts` do node:

```
nvm install --lts
```

### npm

Configurar as variáveis default do [npm](npmjs.com):

```
npm config set init-author-name "Your name"
npm config set init-author-email "name@domain.com"
npm config set init-author-url "http://domain.com"
npm config set init-license "MIT"
```


## Softwares

Navegadores:

```
brew cask install blisk
brew cask install brave
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install chromium
brew cask install firefox
brew cask install homebrew/cask-versions/firefox-developer-edition
brew cask install firefox-nightly
brew cask install opera
brew cask install opera-developer
brew cask install torbrowser
```

Editores de texto:

```
brew cask install atom
brew cask install hyper
brew cask install iterm2
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install webstorm
```

Ferramentas de desenvolvimento:

```
brew cask install dash
brew cask install docker
brew cask install github
brew cask install gitkraken
brew cask install sourcetree
brew cask install insomnia
brew cask install postman
```

Gerenciadores de banco de dados:

```
brew cask install sequel-pro
brew cask install datagrip
brew cask install navicat-for-postgresql
brew cask install pgadmin4
```

Programas de mensagem:

```
brew cask install discord
brew cask install franz
brew cask install messenger
brew cask install slack
brew cask install telegram-desktop
brew cask install whatsapp
```

Programas de música e mídia:

```
brew cask install deezer
brew cask install spotify
brew cask install vlc
brew cask install iina
```

Programas para designer:

```
brew cask install blender
brew cask install aseprite
brew cask install gimp
brew cask install magicavoxel
```

Apps para jogar:

```
brew cask install battle-net
brew cask install openemu
brew cask install steam
```

Utilitários:

```
brew cask install 1password
brew cask install alfred
brew cask install bartender
brew cask install cheatsheet
brew cask install cleanmymac
brew cask install command-tab-plus
brew cask install etcher
brew cask install vanilla
brew cask install virtualbox
brew cask install webtorrent
```

Proteção de tela, frescura de quem usa mac:

```
brew cask install fliqlo
brew cask install padbury-clock
```

## Drivers

Instalar drivers:

```
brew cask install logitech-options
brew cask install razer-synapse
brew cask install xbox360-controller-driver-unofficial
```

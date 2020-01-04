# Configurar MacOS

Tutorial para configurar o macOS e meus apps.

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
brew install git
brew install git-flow-avh
```

Configurar informações do [git](https://git-scm.com):

```shell
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
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
## Default themes

ZSH_THEME="agnoster"
ZSH_THEME="gnzh"
ZSH_THEME="amuse"

## Custom themes

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="honukai/honukai"
ZSH_THEME="materialshell/materialshell"
```

### shell

Para adicionar e utilziar os snippets, basta baixar o repositório:

```shell
cd ~
git clone git@github.com:dipp3r/configs.git ~/.config/personal
```

Adicionar a linha abaixo há no arquivo `.zshrc` ou `.bashrc`:

```shell
source ~/.config/personal/default.sh
```

ou execute o comando:

```shell
echo "\n\nsource ~/.config/personal/default.sh" >> ~/.zshrc
```

### zsh

Mudar o `shell` default para o `zsh`:

```shell
chsh -s /bin/zsh
```

### Command Line

Instalar ferramentas do terminal

```shell
brew install tree
```

### Node

Instalar o gerenciador de versão do node:

```shell
brew install nvm
```

Adicionar a variável de ambiente no arquivo `.zshrc` ou `.bashrc`:

```shell
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
```

Instalar a versão `lts` do node:

```shell
nvm install --lts
```

Instalar pacotes globais:

```shell
npm i -g create-react-app
npm i -g generator-editorconfig
npm i -g gitignore
npm i -g nodemon
npm i -g yarn
npm i -g yo
```

### npm

Configurar as variáveis default do [npm](npmjs.com):

```shell
npm config set init-author-name "Your name"
npm config set init-author-email "name@domain.com"
npm config set init-author-url "http://domain.com"
npm config set init-license "MIT"
```

### React Native

Instalar as dependencias do React Native:

```shell
brew install node
brew install watchman
```

Instalar o pacote do React Native:

```shell
npm i -g react-native-cli
```

Ou use o `yarn`:

```shell
yarn global add react-native-cli
```

#### xCode

Instalar IDE:

#### Android Studio

Instalar IDE:

```shell
brew cask install android-studio
```

Adicionar a variável de ambiente no arquivo `.zshrc` ou `.bashrc`:

```shell
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

#### Java

Instalar o JDK:

```shell
brew cask install oracle-jdk
```

Adicionar a variável de ambiente no arquivo `.zshrc` ou `.bashrc`:

```shell
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home/
```

## Itens

Fontes que você vai precisar para programar no mac:

```shell
brew cask install homebrew/cask-fonts/font-fira-code
brew cask install homebrew/cask-fonts/font-source-code-pro
```

Outras fontes:

```shell
brew cask install homebrew/cask-fonts/font-sans-forgetica
```

Instalar softwares direto da AppStore:

```shell
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
mas install 918858936     # Airmail 3
mas install 1059655371    # Newton
mas install 1176895641    # Spark

# Utility
mas install 775737590     # iA Writer
mas install 441258766     # Magnet

# Other
mas install 926121450     # Coinverter
mas install 1081413713    # GIF Brewery 3
mas install 1437226581    # Horo
mas install 884952790     # iTranslate

#MacPaw
mas install 935235287     # Encrypto
mas install 1090488118    # Gemini 2
mas install 425424353     # The Unarchiver
mas install 1266674560    # Wallpaper Wizard
```

## Softwares

Navegadores:

```shell
brew cask install blisk
brew cask install brave-browser
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

```shell
brew cask install android-studio
brew cask install atom
brew cask install hyper
brew cask install iterm2
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install webstorm
```

Ferramentas de desenvolvimento:

```shell
brew cask install dash
brew cask install docker
brew cask install github
brew cask install gitkraken
brew cask install insomnia
brew cask install postman
brew cask install react-native-debugger
brew cask install reactotron
brew cask install sourcetree
```

Gerenciadores de banco de dados:

```shell
brew cask install datagrip
brew cask install navicat-for-postgresql
brew cask install pgadmin4
brew cask install postico
brew cask install sequel-pro
```

Programas de mensagem:

```shell
brew cask install discord
brew cask install franz
brew cask install messenger
brew cask install slack
brew cask install telegram-desktop
brew cask install whatsapp
```

Programas de música e mídia:

```shell
brew cask install audacity
brew cask install deezer
brew cask install fl-studio
brew cask install iina
brew cask install lmms
brew cask install spotify
brew cask install vlc
```

Programas para designer:

```shell
brew cask install aseprite
brew cask install blender
brew cask install gimp
brew cask install hexels
brew cask install krita
brew cask install magicavoxel
```

Programas para game developer:

```shell
brew cask install godot
brew cask install unity
```

Apps para jogar:

```shell
brew cask install battle-net
brew cask install openemu
brew cask install steam
```

Utilitários:

```shell
brew cask install 1password
brew cask install alfred
brew cask install balenaetcher
brew cask install bartender
brew cask install calibre # Conversor de e-Books
brew cask install cheatsheet
brew cask install cleanmymac
brew cask install command-tab-plus
brew cask install contexts
brew cask install google-backup-and-sync
brew cask install iexplorer
brew cask install rocket
brew cask install vanilla
brew cask install virtualbox
brew cask install webtorrent
```

Proteção de tela, frescura de quem usa mac:

```shell
brew cask install fliqlo
brew cask install padbury-clock
```

## iTerm2

Configurar perfil do iTerm2:

```shell
# make
```

## Browser Extensios

##### Generic

- 1Password - [all browser](https://1password.com/downloads/mac/#browsers)
- Fluid - [Website](https://fluidbrowser.com), [Chrome](https://chrome.google.com/webstore/detail/fluid-browser/lbechkjecpoldpfdbikjnabefdjahaok/related)
- Mate Translate - [website](https://twopeoplesoftware.com/mate), [Firefox](https://addons.mozilla.org/pt-BR/firefox/addon/instant-translate/)
- Enhancer for YouTube - [Chrome](https://chrome.google.com/webstore/detail/enhancer-for-youtube/ponfpcnoihfmfllpaingbgckeeldkhle), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/)

##### Privacy

- DuckDuckGo Privacy Essentials - [Firefox](https://chrome.google.com/webstore/detail/duckduckgo-privacy-essent/bkdgflcldnnnapblkhphbgpggdiikppg)
- Ghostery - [Website](https://www.ghostery.com)
- HTTPS Everywhere - [Website](https://www.eff.org/https-everywhere)
- Privacy Badger - [Website](https://www.eff.org/privacybadger)

##### Developer

- CodeCopy - [Repository](https://github.com/zenorocha/codecopy), [Chrome](https://chrome.google.com/webstore/detail/codecopy/fkbfebkcoelajmhanocgppanfoojcdmg), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/codecopy/)
- React Developer Tools - [Repository](https://github.com/facebook/react-devtools), [Chrome](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi), [Firefox](https://addons.mozilla.org/firefox/addon/react-devtools/)
- Redux DevTools Extension - [Repository](https://github.com/zalmoxisus/redux-devtools-extension), [Chrome](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/reduxdevtools/)

##### Style

- User Styles - [Website](https://userstyles.org)

## Drivers

Instalar drivers:

```shell
brew cask install logitech-options
brew cask install homebrew/cask-drivers/razer-synapse
brew cask install xbox360-controller-driver-unofficial
```

## Sistema

### Preferências do sistema

Cantos de acesso rápido:

![Preferências dos cantos de acesso rápido](./assets/docs/settings-hot-corners.png)

Teclado:

![Preferências do teclado](./assets/docs/settings-keyboard-input-sources.png)

Configurar arrastar e soltar no trackpad:

![Preferências do trackpad](./assets/docs/settings-accessibility.png)

### Dashboard

Organização de apps:

![Organização da dashboard dos meus apps](./assets/docs/macos-dashboard-minimal-on-work.png)

### Softwares Settings

#### Contexts

Atalho `Command-Tab`:

![Configurações do atalho Command-Tab](./assets/docs/contexts-command-tab.png)

Atalho `Option-Tab`:

![Configurações do atalho Option-Tab](./assets/docs/contexts-option-tab.png.png)

## Telegram

### Telegram Desktop

Temas:

- Ponsfrilus: [download](https://t.me/desktopThemes/286)

![ponsfrilus - v1](./assets/apps/telegram/theme-tdesktop-ponsfrilus.jpg)

### Telegram Web

Temas:

- Telegram MODERN: [download](https://userstyles.org/styles/170604/telegram-modern)

![Telegram MODERN](./assets/apps/telegram/theme-tweb-modern.jpeg)

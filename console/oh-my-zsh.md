# [ZSH](https://github.com/zsh-users/zsh)

## [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

### Install

``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install [`honukai`](https://github.com/oskarkrawczyk/honukai-iterm-zsh) theme

1. Clone

``` bash
git clone https://github.com/oskarkrawczyk/honukai-iterm-zsh.git $ZSH_CUSTOM/themes/honukai.zsh-theme
```

### Default themes

- `agnoster`
- `gnzh`
- `amuse`

## Install zsh-autosuggestions

1. Clone

```bash
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

2. Paste on .zshrc

```bash
plugins=(zsh-autosuggestions)
```

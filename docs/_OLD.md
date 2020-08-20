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

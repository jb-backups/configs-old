# [Vagrant](https://www.vagrantup.com)

Install [Vagrant](https://www.vagrantup.com/downloads.html) and  [VirtualBox](https://www.virtualbox.org).

## Create ssh key

``` bash
ssh-keygen
```

## Install `Homestead Vagrant Box`

``` bash
vagrant box add laravel/homestead
```

## Config `Homestead`

``` bash
cd ~
git clone https://github.com/laravel/homestead.git Homestead
cd Homestead
bash init.sh
```

## Define connect on My SQL

``` bash
Connection Name: Homestead
Port: 33060
Username: homestead
```

## Change `~/.homestead/Homestead.yaml`

``` bash
folders:
  - map: ~/www
    to: /home/vagrant/www

sites:
    - map: my.course
      to: /home/vagrant/www/course
    - map: my.dev
      to: /home/vagrant/www/dev
    - map: my.freela
      to: /home/vagrant/www/freela
    - map: my.lab
      to: /home/vagrant/www/lab

    - map: arqueiro.app
      to: /home/vagrant/www/freela/arqueiro
    - map: sextante.app
      to: /home/vagrant/www/freela/sextante
    - map: nexatlas.app
      to: /home/vagrant/www/nexatlas/NexAtlas
```

## Change `/etc/hosts`

``` bash
192.168.10.10 my.course
192.168.10.10 my.dev
192.168.10.10 my.freela
192.168.10.10 my.lab

192.168.10.10 arqueiro.app
192.168.10.10 sextante.app
192.168.10.10 nexatlas.app
```

## Run vagrant

``` bash
cd ~/Homestead
vagrant up
```

### Create connect in My SQL Workbench

``` bash
Connection Name: Homestead
Port: 33060
Username: homestead
Password: secret
```

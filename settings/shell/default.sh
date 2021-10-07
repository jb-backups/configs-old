#!/bin/sh

source $(dirname $0)/snippets/clear.sh
source $(dirname $0)/snippets/docker.sh
source $(dirname $0)/snippets/editor.sh
source $(dirname $0)/snippets/git.sh
source $(dirname $0)/snippets/gitflow.sh
# source $(dirname $0)/snippets/homestead.sh
source $(dirname $0)/snippets/node.sh
source $(dirname $0)/snippets/npm.sh
source $(dirname $0)/snippets/outer.sh
# source $(dirname $0)/snippets/vagrant.sh
source $(dirname $0)/snippets/yarn.sh

source $(dirname $0)/trackco.sh

mybash() source ~/bash/bash.sh;

# echo "My shell snippets is loaded!"

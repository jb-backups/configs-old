# GIT COMMANDS

sts() git status;
cmt() git commit -am $1;
clo() git clone $1;
pll() git pull $*;
psh() git push $*;
bra() git branch --all;
bra:n() git checkout -b $1;
bra:d() git branch -d $1;
log() git log $*;
lgg() git log --oneline --decorate --all --graph $*;
pru() git remote update origin --prune;
res() git reset --hard $1;
gkod() git checkout origin develop;
gkom() git checkout origin master;
add() {
  if [ $1 != "" ] ; then
    git add $1;
  else
    git add --all;
  fi

  git status;
}
ckt() {
  if [ $1 != "" ] ; then
    git checkout $*;
  else
    git checkout master;
  fi
}

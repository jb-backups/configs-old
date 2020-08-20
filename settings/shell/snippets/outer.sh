# OUTER COMMANDS

c() clear;
h() history;
hg() {
  history | grep $1;
}
# l() ls -lah;
lsg() {
  ls | tr '[:upper:][:lower:]' '[:lower:][:lower:]' | grep $1;
}
o() {
  if [ $1 != "" ] ; then
    open $1;
  else
    open .;
  fi
};
# src() {
#   if [ $1 != "" ] ; then
#     source $1;
#   else
#     source ~/bash/bash.sh
#   fi
# };
copyHotmartSSH() {
  cp ~/.ssh/hotmart/* ~/.ssh;
  echo "You're using the Hotmart ssh now";
}
copyPersonalSSH() {
  cp ~/.ssh/personal/* ~/.ssh;
  echo "You're using the Personal ssh now";
}

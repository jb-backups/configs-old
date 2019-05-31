# EDITOR COMMANDS

a() {
  if [ $1 != "" ] ; then
    atom $1;
  else
    atom .;
  fi
}
s() {
  if [ $1 != "" ] ; then
    subl $1;
  else
    subl .;
  fi
};
co() {
  if [ $1 != "" ] ; then
    co $1;
  else
    co .;
  fi
};

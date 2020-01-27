# NPM COMMANDS

n() npm $*;
ns() npm start;
nr() npm run $*;
nl() npm list --depth=0;
nlg() npm list -g --depth=0;
ni() npm i $*;
nig() npm i -g $*;
nis() npm i -S $*;
nid() npm i -D $*;
nv() {
  echo "Node Version";
  node -v;
  echo "NPM Version";
  npm -v;
  echo "Yarn Version";
  yarn -v;
}

# GIT FLOW COMMANDS

gfi() git flow init;

gffs() git flow feature start $1;
gffp() git flow feature publish $1;
gfff() git flow feature finish $1;
gfft() git flow feature track $1;

gfbs() git flow bugfix start $1;
gfbp() git flow bugfix publish $1;
gfbf() git flow bugfix finish $1;
gfbt() git flow bugfix track $1;

gfhs() git flow hotfix start $1;
gfhp() git flow hotfix publish $1;
gfhf() git flow hotfix finish $1;
gfht() git flow hotfix track $1;

gfrs() git flow release start $1;
gfrp() git flow release publish $1;
gfrf() git flow release finish $1;
gfrt() git flow release track $1;

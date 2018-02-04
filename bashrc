alias fixnsquash='fixuplast; squash `git log -n1 --skip=2 --format="%H"`'
alias fixuplast='git commit --fixup `git log -n1 --format="%H"`'
alias ga='git add'
alias gau='git add -u'
alias gaa='git add --all'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gg='git grep -n'
alias glon='git log -n10 --oneline'
alias glona='glon --author benjamin'
alias gs='git status'
alias nameonly='git log -n1 --name-only'
alias squash='git rebase -i --autosquash'
alias updatemaster='updatemasterfunction `git rev-parse --abbrev-ref HEAD`'
alias iggy='./go/bin/linux_amd64/iggy'
alias rebootcontainerS='make wipe-container-services && rm -rf deploy/container_services && rm -rf dist/searchindexer && rm -rf .distsearchindexer && make start-container-services'
alias overlay-maxmaps='sudo modprobe overlay && sudo sysctl -w vm.max_map_count=262144'

function ggf { gg "^func.*$1"; }
export -f ggf

function updatemasterfunction { git stash; git checkout master; git pull upstream master; git checkout "$1";git stash pop; }

function vimlist { vim -p `git grep --name-only $1`; }
export -f vimlist

#export PATH="/usr/src/go/bin:$PATH"
#export PATH="/usr/src/go1.7rc6/go/bin:$PATH"
export PATH="/usr/src/go1.8/go/bin:$PATH"
#export PATH="/usr/local/go/bin:$PATH"
export PATH="/home/benny/Workspace/GOGLOBAL/bin:$PATH"
export GOPATH="/home/benny/Workspace/mesa/go"

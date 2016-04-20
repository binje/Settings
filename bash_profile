alias fixnsquash='fixuplast; squash `git log -n1 --skip=2 --format="%H"`'
alias fixuplast='git commit --fixup `git log -n1 --format="%H"`'
alias ga='git add'
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

function ggf { gg "^func.*$1"; }
export -f ggf

function updatemasterfunction { git checkout master; git pull upstream master; git push; git checkout "$1"; }

function vimlist { vim -p `git grep --name-only "$1"`; }
export -f vimlist

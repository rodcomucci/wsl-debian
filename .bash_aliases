# exa
alias l='exa'
alias a='exa -a'
alias ll='exa -gl'
alias la='exa -gla'

#
alias bat='batcat'

# ip
alias ip='ip -c'

# scripts
alias zlog='sh ~/.scripts/zeralog.sh'

# git
alias status='git status'
alias branch='git branch'
alias add='git add'
alias commit='git commit -m'
alias restore='git restore'
# git - log
alias log='git log'
alias logo='git log --oneline'
alias logg='git log --oneline --graph'
# git - stash
alias stash='git stash'
alias list='git stash list'
alias pop='git stash pop'
# git - pull,push,merge
alias pull='sudo git pull origin homologacao'
alias push='sudo git push origin homologacao'
alias merge='sudo git merge homologacao'
# git - chekout
alias checkout.setec='git checkout producao'
alias checkout.hml.setec='git checkout homologacao'

# ssh
alias ssh.hml.setec='ssh -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26'
alias ssh.setec='ssh -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63'

alias pullf.hml.setec='x(){ scp -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26:"$1" "$2"; };x'
alias pushf.hml.setec='x(){ scp -i ~/.ssh/ssh-key-gcloud "$1" "rodrigo@35.198.14.26":"$2"; };x'

# função para contar o total de arquivos de uma pasta
function total() { find "$1" -type f | wc -l; }

# função para o comando cheat.sh
function help() { curl cheat.sh/"$1"; }

# função para o comando scp
# scp hml
function scp.pullf.hml.setec() { scp -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26:$1 $2; }
function scp.pulld.hml.setec() { scp -r -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26:$1 $2; }
function scp.pushf.hml.setec() { scp -i ~/.ssh/ssh-key-gcloud $1 rodrigo@35.198.14.26:$2; }
function scp.pushd.hml.setec() { scp -r -i ~/.ssh/ssh-key-gcloud $1 rodrigo@35.198.14.26:$2; }
# scp prd
function scp.pullf.setec() { scp -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63:$1 $2; }
function scp.pulld.setec() { scp -r -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63:$1 $2; }
function scp.pushf.setec() { scp -i ~/.ssh/ssh-key-gcloud $1 rodrigo@34.95.186.63:$2; }
function scp.pushd.setec() { scp -r -i ~/.ssh/ssh-key-gcloud $1 rodrigo@34.95.186.63:$2; }

# set locale
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

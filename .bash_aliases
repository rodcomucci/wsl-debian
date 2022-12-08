
# exa
alias l='exa'
alias a='exa -a'
alias ll='exa -gl'
alias la='exa -gla'

# batcat
alias bat='batcat'
alias catx='x(){ cat -n "$2" | sed -n "$1"p; unset -f x; }; x'

# head/tail
alias headx='x(){ cat -n "$2" | head -n"$1"; unset -f x; }; x'
alias tailf='x(){ tail -f -s3 -n"$1" "$2"; unset -f x; }; x'
alias tailx='x(){ cat -n "$2" | tail -n"$1"; unset -f x; }; x'

# ip
alias ip='ip -c'

# scripts
alias zeralog='sh ~/.scripts/zeralog.sh'

# exit
alias X='exit'

# git
alias gconfig='git config'
alias gconfig.list='git config -l' # same as --list
alias gconfig.listnames='git config -l --name-only'
alias gconfig.get='git config --get'
alias gconfig.getall='git config --get-all'
alias gconfig.add='git config --add'
alias gconfig.del='git config --unset'
alias gconfig.delall='git config --unset-all'
alias gconfig.edit='git config -e' # same as --edit
# git - status
alias gstatus='git status'
alias gstatus.short='git status -s' # same as --short
alias gstatus.branch='git status -b' # same as --branch
alias gstatus.stash='git status --show-stash'
alias gstatus.untracked='git status -u' # same as --
# git - branch
alias gbranch='git branch'
alias gbranch.force='sudo git branch -f'
alias gbranch.del='sudo git branch -d'
alias gbranch.delforce='sudo git branch -D' # same as --delete --force
alias gbranch.move='sudo git branch -m' # move/rename branch
alias gbranch.moveforce='sudo git branch -M' # same as --mode --force
alias gbranch.copy='sudo git branch -c'
alias gbranch.copyforce='sudo branch -C' # same as --copy --force
alias gbranch.list='git branch -l' # lista branchs locais
alias gbranch.remote='git branch -r' # lista branchs remotas
alias gbranch.all='git branch -a' # lista branchs locais e remotas
alias gbranch.verbose='git branch -v' # same as --verbose
alias gbranch.verbose2='git branch -vv' # same as --verbose with path and the name of remote upstream
# git - switch
alias gswitch='sudo git switch'
alias gswitch.force='sudo git switch -f' # same as --discard-changes
alias gswitch.new='sudo git switch -c' # same as git checkout -b <new_branch> (cria a nova branch antes de alterar para ela)
alias gswitch.newforce='sudo git switch -C' # same as --force-create (se a branch já existir, vai resetá-la)
alias gswitch.merge='sudo git switch -m' # faz um tentativa de merge antes de alterar a branch
alias gswitch.commit='sudo git switch -d' # same as --detach (altera a branch para o commit escolhido)
# git - fetch
alias gfetch='sudo git fetch'
alias gfetch.all='sudo git fetch --all'
alias gfetch.append='sudo git fetch -a'
alias gfetch.dry='sudo git fetch --dry-run' # apenas mostra o que será feito pelo processo
alias gfetch.force='sudo git fetch -f'
# git - rebase
alias grebase='sudo git rebase'
alias grebase.ok='sudo git rebase --continue'
alias grebase.no='sudo git rebase --abort'
alias grebase.quit='sudo git rebase --quit'
alias grebase.force='sudo git rebase -f'
alias grebase.list='sudo git rebase -i' # same as --interactive (cria uma lista do vai ser rebase e permite a edição antes do processo)
# git - rm (remove)
alias gremove='sudo git rm'
alias gremove.force='sudo git rm -f'
alias gremove.dry='sudo git rm -n' # same as --dry-run (não remove os arquivos, apemas mostra o que seria removido)
alias gremove.cached='sudo git rm --cached'
# git - add
alias gadd='sudo git add'
alias gadd.all='sudo git add -A' # same as add .
# git - restore
alias grestore='sudo git restore'
alias grestore.all='sudo git restore .'
alias grestore.commit='sudo git restore -s' # same as --store
alias grestore.staged='sudo git restore -S' # same as --staged
# git - commit
alias gcommit='sudo git commit'
alias gcommit.all='sudo git commit -a' # commit untrecked files
alias gcommit.msg='sudo git commit -m'
# git - reset
alias greset='git reset'
alias greset.soft='git reset --soft' # undo specific commit (not pushed) and keep the changes
alias greset.hard='git reset --hard' # undo specific commit (not pushed) and discard the changes
alias greset.softlast='git reset --soft HEAD^' # undo last commit (not pushed) and keep the changes
alias greset.hardlast='git reset --hard HEAD^' # undo last commit (not pushed) and discard the changes
alias greset.softuntil='x(){ git reset --soft HEAD~"$1"; unset -f x; }; x' # undo 'n' lasts commits (not pushed) and keep all changes
alias greset.harduntil='x(){ git reset --hard HEAD~"$1"; unset -f x; }; x' # undo 'n' lasts commits (not pushed) and discard all changes
# git - revert
alias grevert='git revert'
alias grevert.noedit='git revert --no-edit'
alias grevert.lastnoedit='git revert --no-edit HEAD^' # undo last commit (pushed)
alias grevert.last='git revert HEAD^' # undo last commit (pushed) and creates new commit
# git - log
alias glog='git log'
alias glog.one='git log --oneline'
alias glog.graph='git log --oneline --graph'
alias glog@hml='git log -p HEAD..origin/homologacao'
# git - diff
alias gdiff='git diff'
alias gdiff@hml='git diff HEAD..origin/homologacao'
# git - show
alias gshow='git show'
alias gshow.one='git show --oneline'
# git - stash
alias gstash='sudo git stash'
# git - pull,push,merge
alias gpull='sudo git pull'
alias gpush='sudo git push'
alias gpull@hml='sudo git pull origin homologacao'
alias gpush@hml='sudo git push origin homologacao'
alias gpush@hmlforce='sudo git push --force origin homologacao'
alias gpush@prd='sudo git push origin producao'
# git - merge
alias gmerge='sudo git merge'
alias gmerge@hml='sudo git merge homologacao'
# git - cherry-pick
alias gpick='sudo git cherry-pick'
alias gpick.last@hml='sudo git cherry-pick origin/homologacao'
alias gpick.rest@hml='sudo git cherry-pick ..origin/homologacao'
# git - chekout
alias gcheck='sudo git checkout'
alias gcheck@prd='sudo git checkout producao'
alias gcheck@hml='sudo git checkout homologacao'


# ssh
alias ssh@hml='ssh -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26'
alias ssh@prd='ssh -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63'
alias ssh@hostgator='ssh root@50.116.72.73 -p 22022'

# scp
alias scp.pullf@hml='x(){ sudo scp -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26:"$1" "$2"; unset -f x; }; x'
alias scp.pulld@hml='x(){ sudo scp -r -i ~/.ssh/ssh-key-gcloud rodrigo@35.198.14.26:"$1" "$2"; unset -f x; }; x'
alias scp.pushf@hml='x(){ sudo scp -i ~/.ssh/ssh-key-gcloud "$1" rodrigo@35.198.14.26:"$2"; unset -f x; }; x'
alias scp.pushd@hml='x(){ sudo scp -r -i ~/.ssh/ssh-key-gcloud "$1" rodrigo@35.198.14.26:"$2"; unset -f x; }; x'
alias scp.pullf@prd='x(){ sudo scp -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63:"$1" "$2"; unset -f x; }; x'
alias scp.pulld@prd='x(){ sudo scp -r -i ~/.ssh/ssh-key-gcloud rodrigo@34.95.186.63:"$1" "$2"; unset -f x; }; x'
alias scp.pushf@prd='x(){ sudo scp -i ~/.ssh/ssh-key-gcloud "$1" rodrigo@34.95.186.63:"$2"; unset -f x; }; x'
alias scp.pushd@prd='x(){ sudo scp -r -i ~/.ssh/ssh-key-gcloud "$1" rodrigo@34.95.186.63:"$2"; unset -f x; }; x'

# função para contar o total de arquivos de uma pasta
alias total='x(){ find "$1" -type f | wc -l; unset -f x; }; x'
#function total() { find "$1" -type f | wc -l; }

# função para o comando cheat.sh
alias help='x(){ curl cheat.sh/"$1"; unset -f x; }; x'
#function help() { curl cheat.sh/"$1"; 

# mysql
# mysql access
alias my.hml='mysql --host=35.199.121.211 --database=setec_hml --user=sistema-hml --password=ibfmulEysG9iH7d2'
alias my.prd='mysql --host=35.199.121.211 --database=setec_producao --user=setec_producao --password=ibfmulEysG9iH7d2'
alias my.dev='mysql --host=localhost --database=setec_dev --user=setec --password=setec'
# mysql dump
alias my.dump@dev='mysqldump --skip-lock-tables --host=localhost setec_dev --user=setec --password=setec --triggers --routines --events --verbose'
alias my.dump@hml='mysqldump --skip-lock-tables --host=35.199.121.211 setec_hml --user=sistema-hml --password=ibfmulEysG9iH7d2 --triggers --routine --events --verbose'
alias my.dump@prd='mysqldump --skip-lock-tables --host=35.199.121.211 setec_producao --user=setec_producao --password=ibfmulEysG9iH7d2 --triggers --routines --events --verbose'
# mysql restore
alias my.restore@hml='x(){ pv "$1" | mysql --host=35.199.121.211 --database=setec_hml --user=sistema-hml --password=ibfmulEysG9iH7d2; unset -f x; }; x'
alias my.restore@prd='x(){ pv "$1" | mysql --host=35.199.121.211 --database=setec_producao --user=setec_producao --password=ibfmulEysG9iH7d2; unset -f x; }; x'
alias my.restore@dev='x(){ pv "$1" | mysql --host=localhost --database=setec_dev --user=setec --password=setec; unset -f x; }; x'
alias my.restore@dev2='mysql -h localhost -u setec -p setec setec_dev'
# mysql copy dump
alias my.backup='x(){ pv "$1" > /mnt/c/Users/Limao/Documents/bancada/setec/bak_bancos/"$1"; unset -f x; }; x'

# postgresql
# postgresql access
alias pg.dev='PGPASSWORD=setec psql -h localhost -d setec_permis_dev -U setec'
alias pg.hml='PGPASSWORD=ibfmulEysG9iH7d2 psql -h 35.198.36.88 -d setec_permis_hml -U sistema-hml'
alias pg.prd='PGPASSWORD=ibfmulEysG9iH7d2 psql -h 35.198.36.88 -d setec_permis -U sistema-hml'
# postgresql dump
alias pg.dump@dev='PGPASSWORD=setec pg_dump -h localhost -U setec -W -d setec_permis_dev -v --clean --no-owner --exclude-table=syslog --no-privileges --inserts'
alias pg.dump@hml='PGPASSWORD=ibfmulEysG9iH7d2 pg_dump -h 35.198.36.88 -U sistema-hml -W -d setec_permis_hml -v --clean --no-owner --exclude-table=syslog --no-privileges --inserts'
alias pg.dump@prd='PGPASSWORD=ibfmulEysG9iH7d2 pg_dump -h 35.198.36.88 -U sistema-hml -W -d setec_permis -v --clean --no-owner --exclude-table=syslog --no-privileges --inserts '
# postgresql restore
alias pg.restore@dev='PGPASSWORD=setec pg_restore -h localhost -U setec -W -d setec_permis_dev --role=setec -v -O'
alias pg.restore@hml='PGPASSWORD=ibfmulEysG9iH7d2 pg_restore -h 35.198.36.88 -U sistema-hml -W -d setec_permis_hml --role=sistema-hml -v -O'
alias pg.restore@prd='PGPASSWORD=ibfmulEysG9iH7d2 pg_restore -h 35.198.36.88 -U sistema-hml -W -d setec_permis --role=sistema-hml -v -O'

# set locale
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# set date-time stamp in commands history
 export HISTTIMEFORMAT="[%Y-%m-%d %T] $USER@$HOSTNAME: "

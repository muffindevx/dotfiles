# Utils
function mcd(){
    mkdir $1 && z $1
}

alias s="fzf"
alias exif="$HOME/Tools/ExifTool/exiftool"

alias gi="git init -q --initial-branch=main"
alias gs="git status"
alias ga="git add $@"
alias gcm="git commit -am $1"
alias gco="git checkout ."
alias gca="git commit --amend -m $1"

alias gc="git clone $@"
alias gcb="git switch -c $1"
alias gb="git switch $1"

alias gstu="git stash -u"
alias gsta="git stash apply"
alias gstl="git stash list"
alias gstc="git stash clear"
alias gstp="git stash pop"

alias gbm="git branch -m $1"
alias gbl="git branch -a"
alias gbr="git branch -r"
alias gbd="git branch -d $1"
alias gbD="git branch -D $1"

alias gm="git merge $1"
alias gf="git fetch $@"
alias gp="git pull $@"
alias gps="git push $@"
alias gpf="git push -f origin $1"
alias gpd="git push -d origin $1"

alias gri="git rebase -i $@"
alias grh="git reset --hard $@"
alias gr="git reset $@"
alias grg="git reflog"

alias gl="git log --oneline --decorate"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Veracrypt
alias vd="veracrypt -d /dev/sdc"
function vm() {
    veracrypt -t -k '' --pim=0 --protect-hidden=no /dev/sdc /media/${1}
}



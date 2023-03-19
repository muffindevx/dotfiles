# Utils

function mcd(){
    mkdir $1 && z $1
}

alias s="fzf"
alias exif="$HOME/Tools/ExifTool/exiftool"

# GIT
function gaf(){
    git add $1
}

function gac(){
    git add -am "$1"
}

function gec(){
    git commit --amend -m "$1"
}

function gr(){
    git reset HEAD~$1
}

function gc(){
    git clone $1 $2
}

function gp(){
    git push origin +$1
}

function gd(){
    git push origin :$1
}

function gpo(){
    git pull origin $1
}

function gb(){
    git switch -c $1
}

function gsd() {
    git stash stash@{$1}
}

alias ga="git add -A"
alias gp="git pull"
alias gl="git log --oneline --decorate"
alias gf="git fetch"
alias gi="git init"
alias gco="git checkout ."
alias gba="git branch --all"
alias gsu="git stash -u"
alias gsp="git stash apply"
alias gsl="git status list"
alias gsc="git stash clear"
alias gst="git status"

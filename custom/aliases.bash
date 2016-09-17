##
## Common
##

alias cdp="cd ${HOME}/Projects"
alias colibs="cd ${HOME}/composer/libs"

phpunit() {
  phpunit "$@"
}
alias pu=phpunit

##
## GIT
##

alias ggk="gitk --all &"
alias ggui="git gui &"
alias ggw="git add -A . && git commit -m \"WIP\" ."
alias gguw="git reset HEAD~1"
alias ggs="git status -u"

gitDiff() {
  git diff --color --minimal --patience "$@" | /usr/local/bin/diff-highlight | more
}
alias ggd=gitDiff

gitRebaseInteractive() {
  git rebase -i "$@"
}
alias ggr=gitRebaseInteractive

# Processes management
psgFunction() {
  ps auxwf | grep -v grep | grep --color $1
}
alias psg=psgFunction

# Weather service
alias wpraha="wttr Prague"
alias wtrutnov="wttr Trutnov"

# the fuck

eval $(thefuck --alias)

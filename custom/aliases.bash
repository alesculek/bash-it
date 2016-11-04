##
## Common
##

psgFunction() {
  ps auxwf | grep -v grep | grep --color $1
}
alias psg=psgFunction


alias cdp="cd ${HOME}/Projects"
alias colibs="cd ${HOME}/composer/libs"


hardKill() {
  echo "Hardkill: $1"
  kill -9 $(psgFunction $1 | awk '{print $2}' | tr '\n' ' '; echo "")
}
alias hardkill=hardKill


alias killff="hardkill firefox"
alias killps="hardkill phpstorm"
alias killev="hardkill evolution"
alias killrh="hardkill rhythmbox"

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


# Weather service
alias wpraha="wttr Prague"
alias wtrutnov="wttr Trutnov"

# the fuck

eval $(thefuck --alias)
alias f="fuck"

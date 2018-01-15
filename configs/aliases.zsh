# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"

## Tmux:
alias ta="tmux attach"
alias tad="tmux attach -d"
alias tl="tmux ls"
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
alias ssh='ssh -A'
alias cpr="rsync -aP"

command -v xdg-open >/dev/null 2>&1 && alias open="xdg-open"

## Emacs:
export EDITOR="$HOME/bin/editor"
export VISUAL="$HOME/bin/editor"
alias e="$EDITOR"
export ALTERNATE_EDITOR=""
export VISUAL="emacsclient"

if [ -f "$HOME/.zshrc_$MY_LOCATION" ]; then
  source "$HOME/.zshrc_$MY_LOCATION"
fi

# OS X things.
if [[ `uname` == "Darwin" ]]; then
  function top() {
    if [ $# -eq 0 ]; then
      /usr/bin/top -o cpu
    else
      /usr/bin/top "$@"
    fi
  }

  # Always use:
  #   l: List in long format
  #   h: Sizes in human-readable form
  #   F: Dir, symlink, executable, etc., symbols
  #   G: Colorize!
  alias l="ls -lhFG"
  alias la="ls -lhFGA"   # All files
  alias ltr="ls -lhFGtr" # By time, reverse
  alias lsr="ls -lhFGSr" # By size, reverse
else
  # Non-OS X things.
  alias l="ls -lhF --group-directories-first --color=always"
fi

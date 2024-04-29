# Source generic interactive shell config
. "${HOME}/.config/shell/interactive.sh"

# Lines added by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
# End of lines added by zsh-newuser-install

# Enable completion
zstyle :compinstall filename '${HOME}/.zshrc'
autoload -Uz compinit

# Refresh zcompdump only once per day
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
  touch ~/.zcompdump
else
  compinit -C
fi

export KEYTIMEOUT=15
insertmode () {
  print -n '\e]12;#cccccc\a'
  print -n '\e[6 q'
}
normalmode () {
  print -n '\e]12;#e5e9f0\a'
  print -n '\e[2 q'
}

#Reverse search
bindkey -e
bindkey '^R' history-incremental-search-backward

# SOL and EOL bindings
# Bind Ctrl+a to beginning-of-line (default binding)
# bindkey "^a" beginning-of-line
#bindkey "\e[1~" beginning-of-line

# Bind Ctrl+e to end-of-line (default binding)
#bindkey "^e" end-of-line
#bindkey "\e[4~" end-of-line


# Configure Zsh autosuggestion features
# --------------------------------------------- #
if [ -d "${HOME}/.config/zsh/zsh-autosuggestions" ]
then
  source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

  # Accept current suggestion with <Ctrl>-<Space>
  bindkey '^ ' autosuggest-accept

  # Use history and completion for suggestions
  ZSH_AUTOSUGGEST_STRATEGY=(completion)

fi
# --------------------------------------------- #

# Don't show user@host
# export PS1="%~ $ ";

# Disable globbing on the remote path.
alias scp='noglob scp_wrap'
function scp_wrap {
  local -a args
  local i
  for i in "$@"; do case $i in
    (*:*) args+=($i) ;;
    (*) args+=(${~i}) ;;
  esac; done
  command scp "${(@)args}"
}

alias rsync="noglob rsync"

# navigation

cx() { cd "$@" && l; }
fcd() { cd "$(find . -type d -not -path '*/.*' | fzf)" && l; }
f() { echo "$(find . -type f -not -path '*/.*' | fzf)" | pbcopy }
fv() { nvim "$(find . -type f -not -path '*/.*' | fzf)" }


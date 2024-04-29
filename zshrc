# Source interactive Zsh shell config

# iterm2 shell integration
export PS1=${iterm2_prompt_mark}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
. "${HOME}/.config/zsh/interactive.sh"
. "${HOME}/.config/zsh/login.sh"
. "${HOME}/bin/miniforge3/etc/profile.d/conda.sh"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

DISABLE_UNTRACKED_FILES_DIRTY="true"

alias clear_logs="sudo rm /var/log/asl/*.asl"

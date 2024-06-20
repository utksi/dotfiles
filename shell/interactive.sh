# Aliases
# --------------------------------------------- #
alias sudo="sudo "

alias grep='grep -n --color=auto'
alias cls='clear'

# improved ls
alias l="exa"
alias ll="exa -l -G"
alias L="exa -la"
alias vi='/opt/homebrew/bin/nvim'
alias vim='/opt/homebrew/bin/nvim'

# Servers
alias tetralith='ssh -X x_utksi@tetralith-el9.nsc.liu.se'
alias sigma='ssh -X x_utksi@sigma.nsc.liu.se'
alias dardel='ssh -X usingh@dardel.pdc.kth.se'
alias alvis='ssh -X singhu@alvis1.c3se.chalmers.se'

# compilers
alias gcc='/opt/homebrew/bin/gcc-13'
alias g++='/opt/homebrew/bin/g++-13'
alias gfortran='/opt/homebrew/bin/gfortran-13'

alias cc='/opt/homebrew/bin/gcc-13'
alias CC='/opt/homebrew/bin/gcc-13'
alias cxx='/opt/homebrew/bin/g++-13'
alias CXX='/opt/homebrew/bin/g++-13'
alias fortran='/opt/homebrew/bin/gfortran-13'
alias FC='/opt/homebrew/bin/gfortran-13'

# mpi
alias gmpicc='/usr/local/bin/mpicc'
alias gmpicxx='/usr/local/bin/mpicxx'
alias gmpic++='/usr/local/bin/mpic++'
alias gmpifort='/usr/local/bin/mpifort'
alias gmpif77='/usr/local/bin/mpif77'
alias gmpif90='/usr/local/bin/mpif90'
alias gmpirun='/usr/local/bin/mpirun'
alias gmpiexec='/usr/local/bin/mpiexec'
alias gmpihydra='/usr/local/bin/mpiexec.hydra'
alias gmpivars='/usr/local/bin/mpivars'

# Some Git alias
alias gg="git status"
alias ggd="git diff"
alias gga="git add"
alias ggc="git commit -m"
alias ggp="git push"

## venv
# Conda
alias doped="conda activate doped"
alias de="conda deactivate"

# py-venv
alias opto="source ~/.venv/opto/bin/activate"
alias wann2j="source ~/.venv/wann2j/bin/activate"

# Applications
alias vscode="/Applications/code"
alias ci="/Applications/code -r"
alias firefox="/Applications/Firefox"
alias pomo="/Users/utksi60/.config/scripts/pomodoro.sh"
alias zathura-mupdf='ZATHURA_PLUGIN_PATH=/opt/homebrew/Cellar/zathura/HEAD-9ab68dd/lib/zathura/libpdf-mupdf.dylib zathura'
alias zathura-poppler='ZATHURA_PLUGIN_PATH=/opt/homebrew/Cellar/zathura/HEAD-9ab68dd/lib/zathura/libpdf-poppler.dylib zathura'
alias yt-dlp='/Users/utksi60/bin/scripts/yt-dlp_macos'
# --------------------------------------------- #

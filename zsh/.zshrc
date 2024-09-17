# Directory where ZINIT is gona be placed
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download ZINIT if not installed
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load ZINIT
source "${ZINIT_HOME}/zinit.zsh"

# Prompt setup
#PROMPT="%{$(tput setaf 9)%}[%{$(tput setaf 10)%}%n%{$(tput setaf 13)%}@%{$(tput setaf 14)%}%m %{$(tput setaf 33)%}%1~%{$(tput setaf 9)%}] %{$(tput setaf 13)%}> %{$(tput sgr0)%}"
PROMPT="%F{magenta}╭─ %F{blue}%n%f@%F{yellow}%m %F{green}%~%f
%F{magenta}╰─ %F{red}>%f "
 
# Loading plugins
zinit light zsh-users/zsh-syntax-highlighting # Hightlight commands
zinit light zsh-users/zsh-completions	      # Help to complete the commands
zinit light zsh-users/zsh-autosuggestions     # Seggestions based on the history

# Loading completition plugin
autoload -U compinit && compinit

# History
HISTSIZE=5000
HISTFILE=~/.config/zsh/zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase # Delete duplicates from the hist file
setopt appendhistory
setopt sharehistory # Share across all the zsh sessions
setopt hist_ignore_space # If you put a space in front of the command it will not be saved
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Keybinds
bindkey -v
bindkey '^p' history-search-backward # Ctrl+p
bindkey '^n' history-search-forward  # Ctrl+n

# Completition styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # Match case insesitive files
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Show colored suggestion files

# Custom functions
lfcd () {
    # command is needed in case lfcd is aliased to lf
    cd "$(command lf -print-last-dir "$@")"
}

# Alias
alias pof='sync; shutdown now'
alias push='pushd .'
alias pop='popd'
alias ls="exa --icons"
alias la="ls -lah"
alias ll="ls -1"
alias lf="lfcd"
# Shell integrations
eval "$(fzf --zsh)" # Ctrl+r
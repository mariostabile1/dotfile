if status is-interactive
  # neofetch
end

# Created by `pipx` on 2023-09-01 21:27:20
set PATH $PATH /home/mario/.local/bin

# Custom funtions
function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    # command is needed in case lfcd is aliased to lf.
    # Quotes will cause cd to not change directory if lf prints nothing to stdout due to an error.
    cd "$(command lf -print-last-dir $argv)"
end

# Alias
alias nt "nautilus ."
alias pof "sync && poweroff"
alias sus "systemctl suspend"
alias push "pushd ."
alias pop "popd"
alias lock "xdg-screensaver lock"
alias btop "bpytop"
alias lf lfcd


# Exa file listener config
if type -q exa
  alias ls "exa --icons"
  alias la "ls -lah"
  alias ll "ls -1"
end


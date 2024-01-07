if status is-interactive
  # neofetch
end

# Created by `pipx` on 2023-09-01 21:27:20
set PATH $PATH /home/mario/.local/bin

# Alias
alias nt "nautilus ."
alias pof "sync; poweroff"
alias lsize "ls -lah"
alias sus "systemctl suspend"
alias ssh_lab2 "ssh m.stabile4@laboratorio2.di.unipi.it"
alias push "pushd ."
alias pop "popd"

# Exa file listener config
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

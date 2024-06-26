if status is-interactive
  # neofetch
end

# Created by `pipx` on 2023-09-01 21:27:20
set PATH $PATH /home/mario/.local/bin

# Alias
alias nt "nautilus ."
alias pof "sync && poweroff"
alias sus "systemctl suspend"
alias push "pushd ."
alias pop "popd"
alias lock "xdg-screensaver lock"

# Exa file listener config
if type -q exa
  alias ls "exa --icons"
  alias la "ls -lah"
  alias ll "ls -1"
end

# XAMPP 
function xampp
	set XAMPP_DATA /opt/lampp
	if test "$argv[1]" = "start" -o "$argv[1]" = "stop" 
		$XAMPP_DATA/xampp "$argv[1]"
	else
		echo "Argomento sbagliato"
	end
end

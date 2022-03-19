typeset -U PATH path
path=("$path[@]" "$HOME/.local/bin")
path=("$path[@]" "$HOME/.scripts")
path=("$path[@]" "$(yarn global bin)")

export PATH
export EDITOR=nvim

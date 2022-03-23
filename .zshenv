typeset -U PATH path
path=("$path[@]" "$HOME/.scripts")
path=("$path[@]" "$HOME/.local/bin")
path=("$path[@]" "$HOME/.emacs.d/bin")
path=("$path[@]" "$HOME/.ghcup/bin")
path=("$path[@]" "$HOME/.cargo/bin")

export PATH
export EDITOR=nvim


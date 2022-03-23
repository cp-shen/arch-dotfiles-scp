typeset -U PATH path
path=("$path[@]" "$HOME/.scripts")
path=("$path[@]" "$HOME/.local/bin")
path=("$path[@]" "$HOME/.emacs.d/bin")
path=("$path[@]" "$HOME/.ghcup/bin")
path=("$path[@]" "$HOME/.cabal/bin")
path=("$path[@]" "$HOME/.cargo/bin")

export PATH
export EDITOR=nvim

# porxy config
export http_proxy=http://127.0.0.1:7890
export https_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1"

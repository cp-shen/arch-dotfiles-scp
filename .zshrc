fpath=(~/.zsh/functions $fpath)

# enable fish-like auto suggestion and syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# enable pkgfile integration
source /usr/share/doc/pkgfile/command-not-found.zsh


# bindkeys
bindkey -v # enable vi mode
bindkey "^[[3~" delete-char # enable delete key
bindkey '^[[Z' reverse-menu-complete # enable shift-tab


# aliases in alphabet order
alias du="du -h"
alias gvim="nvim-qt --no-ext-tabline"
alias i3exit="i3-msg exit"
alias l="ls -hlF --color=auto"
alias la="ls -ahlF --color=auto"
alias less="less -R --use-color"
alias mkd="mkdir -p"
alias nv="nvim"
alias psuser="ps -F -u $USER"
alias psroot="ps -F -u root"
alias ran="ranger"
alias rm="rm -i"
alias sou="source"
alias szshrc="source ~/.zshrc"
alias temacs="TERM=xterm-direct emacs -nw"


# functions to open search in archwiki and arch manual
archwiki(){ 
  firefox "https://wiki.archlinux.org/index.php?search=$1"
}
archman(){
  firefox "https://man.archlinux.org/search?lang=en&q=$1"
}
archfindpkg(){
  firefox "https://archlinux.org/packages/?name=$1"
}

# enable prompt theme and completion
autoload -Uz compinit promptinit
compinit
promptinit

# enable git prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%f'
zstyle ':vcs_info:*' enable git

# setup my custom prompt theme
prompt_mytheme_setup() {
    PS1="%F{red}%B%(?..[%?] )%b%f%n@%F{magenta}%5d%f %# "
    RPS1=\$vcs_info_msg_0_
}
prompt_themes+=( mytheme )
prompt mytheme


# audo file-manager-like key bindings: alt-left and alt_up
cdUndoKey() {
  popd
  zle  reset-prompt
  print
#  ls -Fha
  zle  reset-prompt
}
cdParentKey() {
  pushd ..
  zle  reset-prompt
  print
#  ls -Fha
  zle  reset-prompt
}
zle -N cdParentKey
zle -N cdUndoKey
bindkey '^[[1;3A' cdParentKey
bindkey '^[[1;3D' cdUndoKey


# configure pushd and popd
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT


# enable fzf zsh integration
export FZF_DEFAULT_COMMAND='fd --hidden -E ".cache" -E ".git" -E "tags" -tf -td -- . ./'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --hidden -E ".cache" -E ".git" -E "tags" -td -- . $HOME'
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ]   && source /usr/share/fzf/completion.zsh

# colored man page 
export MANPAGER="less -R --use-color -Dd+r -Du+g"


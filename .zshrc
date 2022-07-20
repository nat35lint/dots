
########################
#███████╗░██████╗██╗░░██╗
#╚════██║██╔════╝██║░░██║
#░░███╔═╝╚█████╗░███████║
#██╔══╝░░░╚═══██╗██╔══██║
#███████╗██████╔╝██║░░██║
#╚══════╝╚═════╝░╚═╝░░╚═╝
########################
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
unsetopt beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ethan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#prompts
ufetch-arch

#alisases and stuffs

alias ls='ls --color=auto'
alias la='ls -al'
alias vim='nvim'
alias gadd="git add"
alias yadd="yadm add"
alias gim="git commit -m"
alias yim="yadm commit -m"
alias gini="git init"
alias yini="yadm init"
alias gpush="git push origin main"
alias gpush="yadm push origin main"




### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions

zinit ice wait"1" lucid
zinit light zdharma-continuum/history-search-multi-word

zinit ice wait"1" lucid
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice depth"1"
zinit light romkatv/powerlevel10k


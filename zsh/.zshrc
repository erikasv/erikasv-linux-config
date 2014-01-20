# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/erikasv/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



##The folllowing lines were added by me :D
##basic stuff from Arch wiki

#To activate a menu arrow-driven (TAB twice)
zstyle ':completion:*' menu select

#Make some keys work
source .zkeybindings

#Search in the official repositories when you enter a command unrecognized.
source /usr/share/doc/pkgfile/command-not-found.zsh

#Filter past commands, show only the ones beginning with the current input
[[ -n "${key[Up]}"   ]]  && bindkey  "${key[Up]}" history-beginning-search-backward
[[ -n "${key[Down]}" ]]  && bindkey  "${key[Down]}" history-beginning-search-forward


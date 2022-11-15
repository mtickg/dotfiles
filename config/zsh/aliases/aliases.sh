#!/usr/bin/env sh

# -- editor -- #
alias vim='nvim'
alias aliasedit="vim $HOME/.config/zsh/aliases/aliases.sh"
alias zshrc="vim $HOME/.zshrc"
alias 'rm=rm -i'

# -- homebrew -- #
alias brewup='brew update -v && printf "\033[1;34\n$(brew outdated)\033[0m"'
alias brewupgrade='brew upgrade -v && brew cleanup -v'

# -- scripts -- #
clr="bash $HOME/.config/scripts/colors.sh"
alias colors=$clr

# -- ls/exa -- #
if type exa &> /dev/null; then
	alias exap="exa --icons --classify --group-directories-first --ignore-glob=.DS_Store"
	alias ls="exap"
	alias la="exap --no-time --no-user -a"
	alias ll="exap --long --no-user --no-time --no-permissions --no-filesize"
	alias lla="exap --long --no-time --no-user -a"
else
	alias ls='ls -p -G'
	alias la='ls -A'
	alias ll='ls -l'
	alias lla='ll -A'
fi


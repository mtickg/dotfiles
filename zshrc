# User configuration

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

eval "$(starship init zsh)"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export CDPATH=$HOME
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='vim'
export STARSHIP_CONFIG=~/.config/zsh/prompt/starship.toml
export STARSHIP_CACHE=~/.config/zsh/prompt/cache

if [ type ghq &> /dev/null ]; then
  export GHQ_ROOT=~/Repositories
fi

autoload -Uz compinit;
typeset -i updated_at=$(date +'%j' -r ~/.config/zsh/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.config/zsh/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

HISTFILE=$HOME/.config/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion

source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/aliases/*
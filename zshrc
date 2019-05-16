source $HOME/.dotfiles/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle git-extras
antigen bundle z
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Bundle from non default repo
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Improved z command
antigen bundle andrewferrier/fzf-z

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

. $HOME/miniconda3/etc/profile.d/conda.sh

export GPG_TTY=$(tty)
eval "$(direnv hook zsh)"

export PATH=$PATH:/snap/bin

#compdef pt
_pt() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _PT_COMPLETE=complete-zsh  pt)
}
if [[ "$(basename ${(%):-%x})" != "_pt" ]]; then
  autoload -U compinit && compinit
  compdef _pt pt
fi

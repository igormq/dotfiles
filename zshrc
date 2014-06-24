# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z rails zeus git-extras)

source $ZSH/oh-my-zsh.sh

# I should install direnv
# eval "$(direnv hook $0)"

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/home/igormq/direnv/go/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

###Added Activator support
export PATH=$PATH:~/.activator-1.2.1-minimal

###Added SDK
export PATH=$PATH:/opt/adt-bundle-linux-x86_64-20140321/sdk/platform-tools

###Added NDK
export PATH=$PATH:/opt/ndk

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

eval "$(direnv hook zsh)"

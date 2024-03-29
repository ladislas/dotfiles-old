# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="john" # ZSH_THEME="fox" ZSH_THEME="af-magic"
ZSH_THEME="mathias"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(common-aliases git osx brew brew-cask bower node npm nvm rbenv colorize zsh-syntax-highlighting-filetypes zsh-syntax-highlighting)
plugins=(common-aliases git osx brew brew-cask node nvm npm colorize zsh-syntax-highlighting-filetypes)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Export $EDITOR
if nvim --version &> /dev/null ; then export EDITOR="nvim" ; else export EDITOR="vim" ; fi

# Useful aliases
alias iterm="open /Applications/iTerm.app"
alias now="ssh ladislas@leka.cloudapp.net"
alias ll="ls -lh --group-directories-first"
alias :q="exit"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Set Terminal.app color mode
export TERM=xterm-256color

# OS dependent configurations
if [[ $OSTYPE =~ "darwin" ]]; then

	echo "Hi Surfer!"

	# Github Token for Homebrew
	export HOMEBREW_GITHUB_API_TOKEN=52c4870a7c68db699d449f6ba4d70833fa2d98af

	#Use GNU Coreutils instead of Apple's
	PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

	# Node Version Manager Stuff
	export NVM_DIR=~/.nvm
	if brew ls --version nvm &> /dev/null ; then source "$(brew --prefix nvm)/nvm.sh"; fi

	# Cask Stuff
	export HOMEBREW_CASK_OPTS="--appdir=/Applications"

	# MacTex Stuff
	# eval "$(/usr/libexec/path_helper -s)"

	# Rubyt Stuff
	export RBENV_ROOT=/usr/local/var/rbenv
	if which rbenv &> /dev/null; then eval "$(rbenv init - zsh)"; fi

	# Python Stuff
	if which pyenv &> /dev/null; then eval "$(pyenv init -)"; fi

	# Gruvbox color palette
	# if ls ~/.nvim/plugged/gruvbox/gruvbox_256palette_osx.sh &> /dev/null ; then ~/.nvim/plugged/gruvbox/gruvbox_256palette_osx.sh; fi

	# Perl Stuff
	# export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/Users/Ladislas/perl5";
	# export PERL_MB_OPT="--install_base /Users/Ladislas/perl5";
	# export PERL_MM_OPT="INSTALL_BASE=/Users/Ladislas/perl5";
	# export PERL5LIB="/Users/Ladislas/perl5/lib/perl5:$PERL5LIB";
	# PATH="/Users/Ladislas/perl5/bin:$PATH";

elif [[ $OSTYPE == "linux-gnu" ]]; then

	echo "Hi Hacker!"

	# Linuxbrew
	# export PATH="$HOME/.linuxbrew/bin:$PATH"
	# export PATH="/home/ladislas/.linuxbrew/sbin:$PATH"
	# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
	# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

	# Pandoc
	export PATH="$HOME/.cabal/bin:$PATH"

	#Node Version Manager Stuff
	source ~/.nvm/nvm.sh

	# Ruby Stuff
	PATH="$HOME/.rbenv/bin:$PATH"
	export RBENV_ROOT=/usr/local/var/rbenv
	if which rbenv > /dev/null ; then eval "$(rbenv init - zsh)" ; fi

fi

# Export Path
export PATH

# Color listing
if which dircolors > /dev/null ; then eval $(dircolors -b $ZSH_CUSTOM/colors/LS_COLORS/LS_COLORS) ; fi
# zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"

# ssh
# export SSH_KEY_PATH"~/.ssh/dsa_id

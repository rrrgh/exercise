# Path to your oh-my-zsh installation.
export ZSH=/home/r/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/r/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias src=source
alias ll='ls -alF'
alias sht='sudo shutdown -P now'
alias rbt='sudo reboot'
alias wrs='whereis'
alias dfz='df -h / /mnt/*'
alias upg='sudo dnf upgrade -y && sudo pip install --upgrade pip shadowsocks setuptools dnslib pycrypto cryptography pyopenssl greenlet gevent youtube-dl '
#alias upg='sudo dnf upgrade -y'
alias ut=youtube-dl
alias utf='youtube-dl -a'
alias utl='youtube-dl -citk --max-quality FORMAT'

alias frf='firefox --ssl-version-min=tls1.2 -private'
alias krm='google-chrome-stable --ssl-version-min=tls1.2 --incognito'

alias cd.='cd ~'
alias cd-='cd -'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'

#alias less='less -N'
alias txz='tar xvJf'
alias clr=clear
alias tl=tail
alias hd=head
alias lss=less
alias rmrf='rm -rf'

alias gcc='gcc -g -Wall '

#export http_proxy=http://127.0.0.1:8087
#export HTTP_PROXY=$http_proxy

#export https_proxy=http://127.0.0.1:8087
#export HTTPS_PROXY=$https_proxy

#alias srfnc='source ~/.zsh-func'
source ~/.zsh-func

unsetopt CASE_GLOB # match case insensitive patterns with ls

unset SSH_ASKPASS # supress SSH from asking git usrname & psswrd using dialog window, but may harm SSH session?

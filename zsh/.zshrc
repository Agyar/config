# Path to your oh-my-zsh installation.
export HOME=/home/ben
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="random"

#ZSH_THEME="nicoulaj"
ZSH_THEME="norm"
#ZSH_THEME="wezm"
#ZSH_THEME="theunraveler"
#ZSH_THEME="edvardm"
#ZSH_THEME="kardan"
#ZSH_THEME="alanpeadbody"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ben/.gem/ruby/2.2.0/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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

# grep aliases
alias wgrep="grep -IRnm1 --exclude-dir=.svn --exclude-dir=.git --color=always"
alias rgrep="grep -IRn --color=always"

alias hnb="/home/ben/Code/Repos/lhnb/src/hnb"

# machines 
alias stfc="ssh djj55689@cegvig6.dl.ac.uk"
alias stfc_proxy="export https_proxy=wwwcache.dl.ac.uk:8080; export http_proxy=wwwcache.dl.ac.uk:8080"
alias stfc_bw="ssh bxl60-jpf02@wonder.hartree.stfc.ac.uk"
alias stfc_bgq="ssh bxl60-jpf02@joule.hartree.stfc.ac.uk"
alias grid5="ssh blorendeau@access.grid5000.fr"
alias mygale="ssh -CY lorendeau@mygale.bordeaux.inria.fr"
alias vpantoine="ssh ben@serv.rougier.me -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine"

# code_saturne
alias csr="/home/ben/Work/Install/CS_alltoall/bin/code_saturne run --initialize"
alias cs_all_to_all_diff="/home/ben/Work/Sources/cs_trunk; cd src/mesh; svn diff cs_join.c -r 4802:5033 --diff-cmd meld"
alias miniSaturne="/home/ben/Work/Install/miniSaturne/bin/code_saturne"
alias MPIniSaturne="/home/ben/Work/Install/miniSaturne/bin/code_saturne"
alias trunkSaturne"/home/ben/Work/Install/CS/bin/code_saturne"

# hnb rsync
alias rsHnbSend='rsync --update -e avvvz -e "ssh -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine -l ben" /home/ben/.hnb ben@serv.rougier.me:/home/ben'
alias rsHnbRecv='rsync --update -e avvvz -e "ssh -p 1022 -i /home/ben/.ssh/id_rsa_vpn_antoine -l ben" ben@serv.rougier.me:/home/ben/.hnb /home/ben/.hnb'
